import { NextResponse } from "next/server";
import { isStaffUser } from "@/lib/auth/staff";
import { createClient } from "@/lib/supabase/server";

export async function GET(request: Request) {
  const url = new URL(request.url);
  const code = url.searchParams.get("code");
  const next = url.searchParams.get("next")?.startsWith("/")
    ? url.searchParams.get("next")!
    : "/staff";

  if (!code) return NextResponse.redirect(new URL("/login?error=oauth", url.origin));

  const supabase = await createClient();
  const { error } = await supabase.auth.exchangeCodeForSession(code);
  if (error) return NextResponse.redirect(new URL("/login?error=oauth", url.origin));

  const { data: { user } } = await supabase.auth.getUser();
  if (!isStaffUser(user)) {
    await supabase.auth.signOut();
    return NextResponse.redirect(new URL("/login?error=domain", url.origin));
  }

  return NextResponse.redirect(new URL(next, url.origin));
}
