"use client";

import Link from "next/link";
import { useRouter } from "next/navigation";
import { useState, useTransition } from "react";
import { saveProjectAction, type ProjectEditorInput } from "@/app/actions/projects";
import { MarkdownContent } from "@/components/markdown-content";
import { projectTemplates } from "@/data/project-templates";
import type { Project, ProjectStatus, StaffProject } from "@/types/project";
import { ProjectMarkdownEditor } from "./project-markdown-editor";

type ProjectEditorProps = {
  project?: StaffProject;
};

function toSlug(value: string) {
  return value
    .toLowerCase()
    .trim()
    .replace(/[^a-z0-9]+/g, "-")
    .replace(/^-+|-+$/g, "");
}

export function ProjectEditor({ project }: ProjectEditorProps) {
  const router = useRouter();
  const [pending, startTransition] = useTransition();
  const firstTemplate = projectTemplates[0];
  const [templateId, setTemplateId] = useState(project ? "custom" : firstTemplate.id);
  const [title, setTitle] = useState(project?.title ?? "");
  const [course, setCourse] = useState(project?.course ?? firstTemplate.course);
  const [courseName, setCourseName] = useState(project?.courseName ?? firstTemplate.courseName);
  const [domain, setDomain] = useState(project?.domain ?? "");
  const [difficulty, setDifficulty] = useState(project?.difficulty ?? "Beginner");
  const [estimatedTime, setEstimatedTime] = useState(project?.estimatedTime ?? "6–10 hours");
  const [skills, setSkills] = useState(project?.skills.join(", ") ?? "");
  const [tools, setTools] = useState(project?.tools.join(", ") ?? firstTemplate.courseName);
  const [summary, setSummary] = useState(project?.summary ?? "");
  const [datasetUrl, setDatasetUrl] = useState(project?.datasetUrl ?? "");
  const [markdown, setMarkdown] = useState(project?.contentMarkdown ?? firstTemplate.markdown);
  const [mode, setMode] = useState<"edit" | "preview">("edit");
  const [saveState, setSaveState] = useState("");

  function applyTemplate(nextTemplateId: string) {
    const template = projectTemplates.find((item) => item.id === nextTemplateId);
    if (!template) return;
    setTemplateId(nextTemplateId);
    setCourse(template.course);
    setCourseName(template.courseName);
    setTools(template.courseName);
    setMarkdown(template.markdown);
  }

  function save(status: ProjectStatus) {
    const input: ProjectEditorInput = {
      id: project?.id,
      title,
      course,
      courseName,
      domain,
      difficulty,
      estimatedTime,
      skills,
      tools,
      summary,
      datasetUrl,
      contentMarkdown: markdown,
    };

    setSaveState("");
    startTransition(async () => {
      const result = await saveProjectAction(input, status);
      setSaveState(result.message);
      if (result.ok && result.slug) {
        if (!project) router.replace(`/staff/projects/${result.slug}/edit`);
        router.refresh();
      }
    });
  }

  return (
    <main className="staff-editor-page">
      <div className="staff-editor-topbar">
        <div>
          <Link href="/staff">← Projects</Link>
          <span aria-hidden="true">/</span>
          <strong>{project ? "Edit project" : "New project"}</strong>
        </div>
        <div className="staff-editor-actions">
          {saveState && <span className="staff-save-state" role="status">{saveState}</span>}
          <button disabled={pending} onClick={() => save("draft")} type="button">
            {pending ? "Saving…" : project?.status === "published" ? "Return to draft" : "Save draft"}
          </button>
          <button className="staff-publish-button" disabled={pending} onClick={() => save("published")} type="button">
            {pending ? "Saving…" : project?.status === "published" ? "Update published project" : "Publish"}
          </button>
        </div>
      </div>

      <div className="staff-editor-heading">
        <p className="staff-kicker">{project?.status === "published" ? "Published project" : "Draft project"}</p>
        <h1>{project ? "Edit the brief" : "Create a project"}</h1>
        <p>Keep catalogue details structured. Build the full learner brief freely below.</p>
      </div>

      <div className="staff-editor-layout">
        <div className="staff-editor-main">
          {!project && (
            <section className="staff-form-section staff-template-section">
              <div className="staff-section-heading">
                <span>01</span>
                <div><h2>Start from a template</h2><p>Templates give you a useful structure without locking it.</p></div>
              </div>
              <div className="template-options">
                {projectTemplates.map((template) => (
                  <button
                    className={templateId === template.id ? "is-selected" : ""}
                    key={template.id}
                    onClick={() => applyTemplate(template.id)}
                    type="button"
                  >
                    <span>{template.label}</span>
                    <small>{template.id === "blank" ? "Empty brief" : `${template.course} structure`}</small>
                  </button>
                ))}
              </div>
            </section>
          )}

          <section className="staff-form-section">
            <div className="staff-section-heading">
              <span>{project ? "01" : "02"}</span>
              <div><h2>Catalogue details</h2><p>These fields help learners find the right project.</p></div>
            </div>

            <div className="staff-fields-grid">
              <label className="staff-field staff-field--wide">
                <span>Project title</span>
                <input
                  onChange={(event) => setTitle(event.target.value)}
                  placeholder="e.g. Healthcare Facility Performance Tracker"
                  value={title}
                />
                {title && (
                  <small>
                    Project URL: /projects/{project?.slug ?? toSlug(title)}
                  </small>
                )}
              </label>
              <label className="staff-field">
                <span>Course</span>
                <input onChange={(event) => setCourse(event.target.value)} placeholder="DA-2" value={course} />
              </label>
              <label className="staff-field">
                <span>Tool or course name</span>
                <input onChange={(event) => setCourseName(event.target.value)} placeholder="Google Sheets" value={courseName} />
              </label>
              <label className="staff-field">
                <span>Industry or domain</span>
                <input onChange={(event) => setDomain(event.target.value)} placeholder="Healthcare" value={domain} />
              </label>
              <label className="staff-field">
                <span>Difficulty</span>
                <select onChange={(event) => setDifficulty(event.target.value as Project["difficulty"])} value={difficulty}>
                  <option>Beginner</option><option>Intermediate</option><option>Advanced</option>
                </select>
              </label>
              <label className="staff-field">
                <span>Estimated time</span>
                <input onChange={(event) => setEstimatedTime(event.target.value)} placeholder="6–10 hours" value={estimatedTime} />
              </label>
              <label className="staff-field">
                <span>Tools</span>
                <input onChange={(event) => setTools(event.target.value)} placeholder="Google Sheets, GitHub" value={tools} />
                <small>Separate multiple tools with commas.</small>
              </label>
              <label className="staff-field staff-field--wide">
                <span>Skills</span>
                <input onChange={(event) => setSkills(event.target.value)} placeholder="Data cleaning, Pivot tables, Charts" value={skills} />
                <small>Separate skills with commas. These appear in search and on the project listing.</small>
              </label>
              <label className="staff-field staff-field--wide">
                <span>Dataset URL</span>
                <input onChange={(event) => setDatasetUrl(event.target.value)} placeholder="https://..." type="url" value={datasetUrl} />
                <small>Optional for drafts. This link appears beside the published project brief.</small>
              </label>
              <label className="staff-field staff-field--wide">
                <span>Short summary</span>
                <textarea maxLength={240} onChange={(event) => setSummary(event.target.value)} placeholder="Explain the business problem and outcome in two short sentences." rows={3} value={summary} />
                <small>{summary.length}/240 characters</small>
              </label>
            </div>
          </section>

          <section className="staff-form-section staff-brief-section">
            <div className="staff-section-heading staff-section-heading--editor">
              <span>{project ? "02" : "03"}</span>
              <div><h2>Project brief</h2><p>Write and organise the complete learner-facing project.</p></div>
              <div className="editor-mode-switch" aria-label="Editor display">
                <button className={mode === "edit" ? "is-active" : ""} onClick={() => setMode("edit")} type="button">Edit</button>
                <button className={mode === "preview" ? "is-active" : ""} onClick={() => setMode("preview")} type="button">Preview</button>
              </div>
            </div>
            {mode === "edit" ? (
              <ProjectMarkdownEditor key={templateId} markdown={markdown} onChange={setMarkdown} />
            ) : (
              <div className="staff-preview">
                {markdown.trim() ? <MarkdownContent>{markdown}</MarkdownContent> : <p>Start writing to preview the project brief.</p>}
              </div>
            )}
          </section>
        </div>

        <aside className="staff-editor-aside">
          <div>
            <p>Publication checklist</p>
            <ul>
              <li className={title && summary ? "is-complete" : ""}><span>{title && summary ? "✓" : ""}</span> Clear title and summary</li>
              <li className={course && domain ? "is-complete" : ""}><span>{course && domain ? "✓" : ""}</span> Course and domain</li>
              <li className={skills && tools ? "is-complete" : ""}><span>{skills && tools ? "✓" : ""}</span> Skills and tools</li>
              <li className={markdown.length > 500 ? "is-complete" : ""}><span>{markdown.length > 500 ? "✓" : ""}</span> Complete project brief</li>
            </ul>
          </div>
        </aside>
      </div>
    </main>
  );
}
