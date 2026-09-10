import { StaffHeader } from "@/components/staff/staff-header";
import { StaffSidebar } from "@/components/staff/staff-sidebar";

export default function StaffLayout({ children }: Readonly<{ children: React.ReactNode }>) {
  return (
    <div className="staff-shell">
      <StaffHeader />
      <div className="staff-workspace">
        <StaffSidebar />
        <div className="staff-workspace__main">{children}</div>
      </div>
    </div>
  );
}
