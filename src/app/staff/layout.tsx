import { StaffHeader } from "@/components/staff/staff-header";
import { StaffSidebar } from "@/components/staff/staff-sidebar";
import { requireStaff } from "@/lib/auth/staff";

export default async function StaffLayout({ children }: Readonly<{ children: React.ReactNode }>) {
  const { supabase, user } = await requireStaff();
  const [{ count: commitmentCount }, { count: submissionCount }] = await Promise.all([
    supabase.from("project_builders").select("id", { count: "exact", head: true }),
    supabase.from("showcase_submissions").select("id", { count: "exact", head: true }).eq("status", "submitted"),
  ]);

  return (
    <div className="staff-shell">
      <StaffHeader email={user.email ?? ""} />
      <div className="staff-workspace">
        <StaffSidebar commitmentCount={commitmentCount ?? 0} submissionCount={submissionCount ?? 0} />
        <div className="staff-workspace__main">{children}</div>
      </div>
    </div>
  );
}
