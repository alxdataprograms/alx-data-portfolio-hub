import { execFileSync } from "node:child_process";
import { readFileSync, writeFileSync } from "node:fs";
import path from "node:path";
import vm from "node:vm";
import TurndownService from "turndown";
import { gfm } from "turndown-plugin-gfm";

const expectedProjectCount = 30;
const sourceRoot = process.argv[2];
const outputPath = process.argv[3] ?? "supabase/seed.sql";

if (!sourceRoot) {
  console.error(
    "Usage: node scripts/import-legacy-projects.mjs <legacy-repository-path> [output-path]",
  );
  process.exit(1);
}

const resolvedSourceRoot = path.resolve(sourceRoot);
const cataloguePath = path.join(resolvedSourceRoot, "js", "projects-data.js");
const catalogueSource = readFileSync(cataloguePath, "utf8");
const catalogueMatch = catalogueSource.match(/const\s+PROJECTS\s*=\s*(\[[\s\S]*?\]);/);

if (!catalogueMatch) {
  throw new Error(`Could not find PROJECTS in ${cataloguePath}`);
}

const catalogue = vm.runInNewContext(`(${catalogueMatch[1]})`, Object.create(null));

if (!Array.isArray(catalogue) || catalogue.length !== expectedProjectCount) {
  throw new Error(
    `Expected ${expectedProjectCount} catalogue records, found ${catalogue.length ?? "an invalid value"}`,
  );
}

const courseDetails = {
  "DA-2": { courseName: "Google Sheets", tools: ["Google Sheets"] },
  "DA-3": { courseName: "MySQL", tools: ["MySQL"] },
  "DA-4": { courseName: "Power BI", tools: ["Power BI"] },
  Capstone: {
    courseName: "Google Sheets, MySQL & Power BI",
    tools: ["Google Sheets", "MySQL", "Power BI"],
  },
};

const requiredSections = [
  "Business Challenge",
  "Background",
  "Project Objective",
  "Learning Objectives",
  "Dataset Information",
  "Project Tasks",
  "Expected Deliverables",
  "Assessment Rubric",
  "Stretch Challenge",
  "Responsible AI Guidance",
  "Reflection Questions",
  "GitHub Portfolio Guidance",
  "LinkedIn Showcase Guidance",
];

const turndown = new TurndownService({
  bulletListMarker: "-",
  codeBlockStyle: "fenced",
  emDelimiter: "*",
  fence: "~~~",
  headingStyle: "atx",
  strongDelimiter: "**",
});

turndown.use(gfm);

turndown.addRule("keyValueTable", {
  filter(node) {
    return node.nodeName === "TABLE" && !node.querySelector("th");
  },
  replacement(_content, node) {
    const rows = Array.from(node.querySelectorAll("tr")).map((row) =>
      Array.from(row.querySelectorAll("td")).map((cell) =>
        turndown
          .turndown(cell.innerHTML)
          .replaceAll("|", "\\|")
          .replace(/\s+/g, " ")
          .trim(),
      ),
    );

    const tableRows = rows
      .filter((row) => row.length === 2)
      .map((row) => `| ${row[0]} | ${row[1]} |`)
      .join("\n");

    return `\n\n| Field | Details |\n| --- | --- |\n${tableRows}\n\n`;
  },
});

turndown.addRule("legacyCodeBlock", {
  filter(node) {
    return node.nodeName === "DIV" && node.classList.contains("code-block");
  },
  replacement(_content, node) {
    return `\n\n~~~text\n${node.textContent.trim()}\n~~~\n\n`;
  },
});

turndown.addRule("removeLegacyGuideButtons", {
  filter(node) {
    return node.nodeName === "A" && node.classList.contains("btn");
  },
  replacement() {
    return "";
  },
});

turndown.addRule("removeRelativeLinks", {
  filter(node) {
    return node.nodeName === "A" && (node.getAttribute("href") ?? "").startsWith("..");
  },
  replacement(content) {
    return content;
  },
});

function slugify(value) {
  return value
    .toLowerCase()
    .trim()
    .replace(/&/g, " and ")
    .replace(/[^a-z0-9]+/g, "-")
    .replace(/^-+|-+$/g, "");
}

function extractProjectMarkdown(html, filePath) {
  const bodyMarker = '<div class="project-body">';
  const bodyStart = html.indexOf(bodyMarker);
  const navigationStart = html.indexOf('<div style="margin-top:48px', bodyStart);

  if (bodyStart === -1 || navigationStart === -1) {
    throw new Error(`Could not isolate the project content in ${filePath}`);
  }

  const projectHtml = html.slice(bodyStart + bodyMarker.length, navigationStart);

  return turndown
    .turndown(projectHtml)
    .replaceAll("\u00a0", " ")
    .replace(/[ \t]+$/gm, "")
    .replace(/\n{3,}/g, "\n\n")
    .trim();
}

function sqlText(value) {
  if (value === null || value === undefined || value === "") return "null";
  return `'${String(value).replaceAll("'", "''")}'`;
}

function sqlRequiredText(value) {
  return `'${String(value).replaceAll("'", "''")}'`;
}

function sqlTextArray(values) {
  return `array[${values.map(sqlRequiredText).join(", ")}]::text[]`;
}

const records = catalogue.map((project, index) => {
  const course = courseDetails[project.course];

  if (!course) {
    throw new Error(`Unknown course ${project.course} for ${project.id}`);
  }

  const projectPath = path.join(resolvedSourceRoot, project.projectPage);
  const html = readFileSync(projectPath, "utf8");

  return {
    legacyId: project.id,
    slug: slugify(project.title),
    title: project.title,
    course: project.course,
    courseName: course.courseName,
    domain: project.domain,
    difficulty: project.difficulty,
    estimatedTime: project.estimatedTime.replace(/\bhrs\b/, "hours"),
    skills: project.skills,
    tools: course.tools,
    summary: project.summary,
    datasetUrl: project.datasetLink,
    contentMarkdown: extractProjectMarkdown(html, projectPath),
    sortOrder: index,
  };
});

const slugs = new Set(records.map((record) => record.slug));
if (slugs.size !== records.length) {
  throw new Error("The generated project slugs are not unique");
}

for (const record of records) {
  const missingSections = requiredSections.filter(
    (section) => !record.contentMarkdown.includes(`## ${section}`),
  );

  if (missingSections.length) {
    throw new Error(`${record.legacyId} is missing sections: ${missingSections.join(", ")}`);
  }

  if (/<[a-z][^>]*>/i.test(record.contentMarkdown)) {
    throw new Error(`${record.legacyId} still contains HTML after Markdown conversion`);
  }
}

let sourceCommit = "unknown";
try {
  sourceCommit = execFileSync("git", ["-C", resolvedSourceRoot, "rev-parse", "HEAD"], {
    encoding: "utf8",
  }).trim();
} catch {
  // A copied source folder may not contain Git metadata.
}

const rows = records.map((project) => `(
  ${sqlRequiredText(project.legacyId)},
  ${sqlRequiredText(project.slug)},
  ${sqlRequiredText(project.title)},
  ${sqlRequiredText(project.course)},
  ${sqlRequiredText(project.courseName)},
  ${sqlRequiredText(project.domain)},
  ${sqlRequiredText(project.difficulty)},
  ${sqlRequiredText(project.estimatedTime)},
  ${sqlTextArray(project.skills)},
  ${sqlTextArray(project.tools)},
  ${sqlRequiredText(project.summary)},
  ${sqlText(project.datasetUrl)},
  ${sqlRequiredText(project.contentMarkdown)},
  'published',
  ${project.sortOrder},
  now()
)`);

const sql = `-- Generated from lawalsegun2025/alx-data-portfolio-hub at ${sourceCommit}.
-- Regenerate with:
-- node scripts/import-legacy-projects.mjs /path/to/legacy-repository

insert into public.projects (
  legacy_id,
  slug,
  title,
  course,
  course_name,
  domain,
  difficulty,
  estimated_time,
  skills,
  tools,
  summary,
  dataset_url,
  content_markdown,
  status,
  sort_order,
  published_at
)
values
${rows.join(",\n")}
on conflict (slug) do update set
  legacy_id = excluded.legacy_id,
  title = excluded.title,
  course = excluded.course,
  course_name = excluded.course_name,
  domain = excluded.domain,
  difficulty = excluded.difficulty,
  estimated_time = excluded.estimated_time,
  skills = excluded.skills,
  tools = excluded.tools,
  summary = excluded.summary,
  dataset_url = excluded.dataset_url,
  content_markdown = excluded.content_markdown,
  status = excluded.status,
  sort_order = excluded.sort_order,
  published_at = coalesce(public.projects.published_at, excluded.published_at);
`;

writeFileSync(path.resolve(outputPath), sql);
console.log(`Wrote ${records.length} projects to ${path.resolve(outputPath)}`);
