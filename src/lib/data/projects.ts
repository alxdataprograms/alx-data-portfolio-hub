import { requireStaff } from "@/lib/auth/staff";
import type { Project, StaffProject } from "@/types/project";
import { createClient } from "@/lib/supabase/server";

type ProjectRow = {
  id?: string;
  slug: string;
  title: string;
  course: string;
  course_name: string;
  domain: string;
  difficulty: Project["difficulty"];
  estimated_time: string;
  skills: string[];
  tools: string[];
  summary: string;
  dataset_url: string | null;
  content_markdown: string;
  status?: StaffProject["status"];
  updated_at?: string;
};

const publicProjectColumns = [
  "id",
  "slug",
  "title",
  "course",
  "course_name",
  "domain",
  "difficulty",
  "estimated_time",
  "skills",
  "tools",
  "summary",
  "dataset_url",
  "content_markdown",
  "status",
  "updated_at",
].join(",");

function toProject(row: ProjectRow): Project {
  return {
    slug: row.slug,
    title: row.title,
    course: row.course,
    courseName: row.course_name,
    domain: row.domain,
    difficulty: row.difficulty,
    estimatedTime: row.estimated_time,
    skills: row.skills,
    tools: row.tools,
    summary: row.summary,
    datasetUrl: row.dataset_url ?? "",
    contentMarkdown: row.content_markdown,
  };
}

export async function getPublishedProjects(): Promise<Project[]> {
  const supabase = await createClient();
  const { data, error } = await supabase
    .from("projects")
    .select(publicProjectColumns)
    .eq("status", "published")
    .order("sort_order", { ascending: true })
    .order("created_at", { ascending: false });

  if (error) {
    throw new Error(`Unable to load published projects: ${error.message}`);
  }

  return ((data ?? []) as unknown as ProjectRow[]).map(toProject);
}

export async function getPublishedProjectBySlug(slug: string): Promise<Project | undefined> {
  const supabase = await createClient();
  const { data, error } = await supabase
    .from("projects")
    .select(publicProjectColumns)
    .eq("status", "published")
    .eq("slug", slug)
    .maybeSingle();

  if (error) {
    throw new Error(`Unable to load project: ${error.message}`);
  }

  return data ? toProject(data as unknown as ProjectRow) : undefined;
}

function toStaffProject(row: ProjectRow): StaffProject {
  return {
    ...toProject(row),
    id: row.id!,
    status: row.status!,
    updatedAt: row.updated_at!,
  };
}

export async function getStaffProjects(): Promise<StaffProject[]> {
  const { supabase } = await requireStaff();
  const { data, error } = await supabase
    .from("projects")
    .select(publicProjectColumns)
    .order("updated_at", { ascending: false });

  if (error) throw new Error(`Unable to load staff projects: ${error.message}`);
  return ((data ?? []) as unknown as ProjectRow[]).map(toStaffProject);
}

export async function getStaffProjectBySlug(slug: string): Promise<StaffProject | undefined> {
  const { supabase } = await requireStaff();
  const { data, error } = await supabase
    .from("projects")
    .select(publicProjectColumns)
    .eq("slug", slug)
    .maybeSingle();

  if (error) throw new Error(`Unable to load staff project: ${error.message}`);
  return data ? toStaffProject(data as unknown as ProjectRow) : undefined;
}
