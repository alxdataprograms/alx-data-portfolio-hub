"use server";

import { revalidatePath } from "next/cache";
import { createClient } from "@/lib/supabase/server";

export type CommitmentResult = { ok: boolean; message: string };

export async function createCommitmentAction(input: {
  projectSlug: string;
  learnerName: string;
  email: string;
  consented: boolean;
}): Promise<CommitmentResult> {
  const supabase = await createClient();
  const { error } = await supabase.rpc("create_project_commitment", {
    p_project_slug: input.projectSlug,
    p_learner_name: input.learnerName,
    p_email: input.email,
    p_consented: input.consented,
  });

  if (error) return { ok: false, message: error.message };
  revalidatePath("/staff/commitments");
  revalidatePath("/staff");
  return { ok: true, message: "You’re building this project." };
}
