import { redirect } from "next/navigation";
import { StaffLogin } from "@/components/staff/staff-login";
import { isStaffUser } from "@/lib/auth/staff";
import { createClient } from "@/lib/supabase/server";

export const metadata = { title: "Staff sign in" };

export default async function LoginPage({ searchParams }: { searchParams: Promise<{ error?: string }> }) {
  const supabase = await createClient();
  const { data: { user } } = await supabase.auth.getUser();
  if (isStaffUser(user)) redirect("/staff");
  const errorCode = (await searchParams).error;
  const error = errorCode === "domain"
    ? "Use an alxafrica.com Google account to access the staff workspace."
    : errorCode === "oauth"
      ? "Google sign-in could not be completed. Please try again."
      : "";
  return <StaffLogin initialError={error} />;
}
