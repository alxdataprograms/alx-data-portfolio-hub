import { StaffHeader } from "@/components/staff/staff-header";

export default function StaffLayout({ children }: Readonly<{ children: React.ReactNode }>) {
  return (
    <div className="staff-shell">
      <StaffHeader />
      {children}
    </div>
  );
}
