import { requireStaff } from "@/lib/auth/staff";
import type { LearnerCommitment } from "@/types/commitment";

type CommitmentRow = {
  id: string;
  learner_name: string;
  email: string;
  created_at: string;
  projects: { title: string; slug: string } | { title: string; slug: string }[];
};

export async function getStaffCommitments(): Promise<LearnerCommitment[]> {
  const { supabase } = await requireStaff();
  const { data, error } = await supabase
    .from("project_builders")
    .select("id,learner_name,email,created_at,projects!inner(title,slug)")
    .order("created_at", { ascending: false });

  if (error) throw new Error(`Unable to load learner commitments: ${error.message}`);

  return ((data ?? []) as unknown as CommitmentRow[]).map((row) => {
    const project = Array.isArray(row.projects) ? row.projects[0] : row.projects;
    return {
      id: row.id,
      learnerName: row.learner_name,
      email: row.email,
      projectTitle: project.title,
      projectSlug: project.slug,
      createdAt: row.created_at,
    };
  });
}
