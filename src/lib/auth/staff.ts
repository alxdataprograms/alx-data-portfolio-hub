import type { User } from "@supabase/supabase-js";
import { redirect } from "next/navigation";
import { createClient } from "@/lib/supabase/server";

export function isStaffUser(user: User | null) {
  const email = user?.email?.toLowerCase() ?? "";
  const provider = user?.app_metadata?.provider;
  return email.endsWith("@alxafrica.com") && provider === "google";
}

export async function requireStaff() {
  const supabase = await createClient();
  const { data: { user } } = await supabase.auth.getUser();

  if (!user || !isStaffUser(user)) {
    redirect("/login");
  }

  return { supabase, user };
}
