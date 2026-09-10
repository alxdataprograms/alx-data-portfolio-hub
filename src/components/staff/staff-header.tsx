import Link from "next/link";

export function StaffHeader() {
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
          <span className="staff-avatar" aria-label="Staff profile">TM</span>
        </nav>
      </div>
    </header>
  );
}
