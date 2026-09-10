"use server";

import { revalidatePath } from "next/cache";
import { requireStaff } from "@/lib/auth/staff";
import { createClient } from "@/lib/supabase/server";
import type { ShowcaseStatus } from "@/types/showcase";

export type ShowcaseActionResult = { ok: boolean; message: string };

export async function submitShowcaseAction(input: {
  id: string;
  projectSlug: string;
  projectTitle: string;
  learnerName: string;
  learnerEmail: string;
  title: string;
  summary: string;
  tools: string[];
  githubUrl: string;
  liveUrl: string;
  coverImagePath: string;
  consented: boolean;
}): Promise<ShowcaseActionResult> {
  const supabase = await createClient();
  const { error } = await supabase.rpc("submit_showcase", {
    p_id: input.id,
    p_project_slug: input.projectSlug,
    p_project_title: input.projectTitle,
    p_learner_name: input.learnerName,
    p_learner_email: input.learnerEmail,
    p_title: input.title,
    p_summary: input.summary,
    p_tools: input.tools,
    p_github_url: input.githubUrl,
    p_live_url: input.liveUrl,
    p_cover_image_path: input.coverImagePath,
    p_consented: input.consented,
  });

  if (error) return { ok: false, message: error.message };
  revalidatePath("/staff/showcase");
  return { ok: true, message: "Submission received." };
}

export async function decideShowcaseAction(
  id: string,
  status: ShowcaseStatus,
): Promise<ShowcaseActionResult> {
  if (!(["submitted", "approved", "declined"] as ShowcaseStatus[]).includes(status)) {
    return { ok: false, message: "Invalid showcase decision." };
  }

  const { supabase, user } = await requireStaff();
  const { data: submission, error: readError } = await supabase
    .from("showcase_submissions")
    .select("slug,cover_image_path,public_cover_image_path")
    .eq("id", id)
    .single();

  if (readError) return { ok: false, message: readError.message };

  let publicPath: string | null = submission.public_cover_image_path;

  if (status === "approved" && !publicPath) {
    const { data: image, error: downloadError } = await supabase.storage
      .from("showcase-submissions")
      .download(submission.cover_image_path);
    if (downloadError) return { ok: false, message: downloadError.message };

    const extension = submission.cover_image_path.split(".").pop()?.toLowerCase() || "webp";
    publicPath = `${id}/cover.${extension}`;
    const { error: uploadError } = await supabase.storage
      .from("showcase-public")
      .upload(publicPath, image, { contentType: image.type, upsert: true });
    if (uploadError) return { ok: false, message: uploadError.message };
  }

  if (status !== "approved" && publicPath) {
    await supabase.storage.from("showcase-public").remove([publicPath]);
    publicPath = null;
  }

  const { error: updateError } = await supabase
    .from("showcase_submissions")
    .update({
      status,
      public_cover_image_path: publicPath,
      decided_at: status === "submitted" ? null : new Date().toISOString(),
      decided_by: user.id,
    })
    .eq("id", id);

  if (updateError) return { ok: false, message: updateError.message };

  revalidatePath("/");
  revalidatePath("/showcase");
  revalidatePath(`/showcase/${submission.slug}`);
  revalidatePath("/staff/showcase");
  revalidatePath(`/staff/showcase/${submission.slug}`);

  return {
    ok: true,
    message: status === "approved" ? "Showcase approved." : status === "declined" ? "Submission declined." : "Submission reopened.",
  };
}
