"use server";

import { revalidatePath } from "next/cache";
import { requireStaff } from "@/lib/auth/staff";
import type { ProjectStatus } from "@/types/project";

export type ProjectEditorInput = {
  id?: string;
  title: string;
  course: string;
  courseName: string;
  domain: string;
  difficulty: "Beginner" | "Intermediate" | "Advanced";
  estimatedTime: string;
  skills: string;
  tools: string;
  summary: string;
  datasetUrl: string;
  contentMarkdown: string;
};

export type ProjectActionResult = {
  ok: boolean;
  message: string;
  slug?: string;
};

function slugify(value: string) {
  return value
    .toLowerCase()
    .trim()
    .replace(/&/g, " and ")
    .replace(/[^a-z0-9]+/g, "-")
    .replace(/^-+|-+$/g, "");
}

function commaSeparated(value: string) {
  return Array.from(new Set(value.split(",").map((item) => item.trim()).filter(Boolean)));
}

function validUrl(value: string) {
  if (!value.trim()) return true;
  try {
    const url = new URL(value);
    return url.protocol === "http:" || url.protocol === "https:";
  } catch {
    return false;
  }
}

export async function saveProjectAction(
  input: ProjectEditorInput,
  status: ProjectStatus,
): Promise<ProjectActionResult> {
  const { supabase, user } = await requireStaff();
  const title = input.title.trim();
  if (title.length < 3) return { ok: false, message: "Add a project title before saving." };
  if (!validUrl(input.datasetUrl)) return { ok: false, message: "Enter a valid dataset URL." };

  const skills = commaSeparated(input.skills);
  const tools = commaSeparated(input.tools);
  if (status === "published") {
    if (!input.course.trim() || !input.courseName.trim() || !input.domain.trim()) {
      return { ok: false, message: "Complete the course and domain before publishing." };
    }
    if (!input.estimatedTime.trim() || !input.summary.trim() || !skills.length || !tools.length) {
      return { ok: false, message: "Complete the catalogue details before publishing." };
    }
    if (input.contentMarkdown.trim().length < 100) {
      return { ok: false, message: "Complete the project brief before publishing." };
    }
  }

  let slug = slugify(title);
  if (!slug) return { ok: false, message: "Use letters or numbers in the project title." };

  if (input.id) {
    const { data: existing, error: existingError } = await supabase
      .from("projects")
      .select("slug")
      .eq("id", input.id)
      .single();
    if (existingError) return { ok: false, message: existingError.message };
    slug = existing.slug;
  }

  const payload = {
    slug,
    title,
    course: input.course.trim(),
    course_name: input.courseName.trim(),
    domain: input.domain.trim(),
    difficulty: input.difficulty,
    estimated_time: input.estimatedTime.trim(),
    skills,
    tools,
    summary: input.summary.trim(),
    dataset_url: input.datasetUrl.trim() || null,
    content_markdown: input.contentMarkdown.trim(),
    status,
    updated_by: user.id,
    published_at: status === "published" ? new Date().toISOString() : null,
  };

  const result = input.id
    ? await supabase.from("projects").update(payload).eq("id", input.id).select("slug").single()
    : await supabase.from("projects").insert({ ...payload, created_by: user.id }).select("slug").single();

  if (result.error) {
    return {
      ok: false,
      message: result.error.code === "23505"
        ? "A project with this title already exists. Use a more specific title."
        : result.error.message,
    };
  }

  revalidatePath("/");
  revalidatePath("/projects");
  revalidatePath(`/projects/${result.data.slug}`);
  revalidatePath("/staff");
  revalidatePath(`/staff/projects/${result.data.slug}/edit`);

  return {
    ok: true,
    message: status === "published" ? "Project published." : "Draft saved.",
    slug: result.data.slug,
  };
}
