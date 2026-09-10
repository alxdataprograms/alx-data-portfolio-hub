"use client";

import Link from "next/link";
import { usePathname } from "next/navigation";

const items = [
  { href: "/staff", label: "Projects", count: null },
  { href: "/staff/showcase", label: "Showcase submissions", count: "2" },
];

export function StaffSidebar() {
  const pathname = usePathname();

  return (
    <aside className="staff-sidebar" aria-label="Staff workspace sections">
      <nav>
        {items.map((item) => {
          const active = item.href === "/staff" ? pathname === "/staff" || pathname.startsWith("/staff/projects") : pathname.startsWith(item.href);
          return <Link className={active ? "is-active" : ""} href={item.href} key={item.href}><span>{item.label}</span>{item.count && <b>{item.count}</b>}</Link>;
        })}
      </nav>
    </aside>
  );
}
