"use client";

import Link from "next/link";
import { usePathname } from "next/navigation";

export function StaffSidebar({ commitmentCount, submissionCount }: { commitmentCount: number; submissionCount: number }) {
  const pathname = usePathname();
  const items = [
    { href: "/staff", label: "Projects", count: null },
    { href: "/staff/commitments", label: "Learner commitments", count: commitmentCount },
    { href: "/staff/showcase", label: "Showcase submissions", count: submissionCount },
  ];

  return (
    <aside className="staff-sidebar" aria-label="Staff workspace sections">
      <nav>
        {items.map((item) => {
          const active = item.href === "/staff" ? pathname === "/staff" || pathname.startsWith("/staff/projects") : pathname.startsWith(item.href);
          return <Link className={active ? "is-active" : ""} href={item.href} key={item.href}><span>{item.label}</span>{item.count !== null && <b>{item.count}</b>}</Link>;
        })}
      </nav>
    </aside>
  );
}
