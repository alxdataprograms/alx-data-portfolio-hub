import Link from "next/link";

export function SiteHeader() {
  return (
    <header className="site-header">
      <div className="site-header__inner">
        <Link className="brand" href="/" aria-label="ALX Data Portfolio Hub home">
          <span className="brand__mark">ALX</span>
          <span className="brand__name">Data Portfolio Hub</span>
        </Link>

        <nav aria-label="Main navigation" className="site-nav">
          <Link href="/projects">Projects</Link>
          <span className="site-nav__divider" aria-hidden="true" />
          <Link href="/showcase">Showcase</Link>
        </nav>
      </div>
    </header>
  );
}
