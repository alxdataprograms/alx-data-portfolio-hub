import Link from "next/link";
import { signOutAction } from "@/app/actions/auth";

export function StaffHeader({ email }: { email: string }) {
  const initials = email.slice(0, 2).toUpperCase() || "TM";

  return (
    <header className="staff-header">
      <div className="staff-header__inner">
        <Link className="staff-brand" href="/staff" aria-label="Staff workspace home">
          <span className="brand__mark">ALX</span>
          <span>
            <strong>Data Portfolio Hub</strong>
            <small>Staff workspace</small>
          </span>
        </Link>

        <nav aria-label="Staff navigation" className="staff-nav">
          <Link href="/staff">Projects</Link>
          <Link className="staff-nav__public" href="/">
            View learner hub <span aria-hidden="true">↗</span>
          </Link>
          <form action={signOutAction}>
            <button className="staff-sign-out" type="submit">Sign out</button>
          </form>
          <span className="staff-avatar" aria-label={`Signed in as ${email}`}>{initials}</span>
        </nav>
      </div>
    </header>
  );
}
