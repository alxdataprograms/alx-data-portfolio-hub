import type { Metadata } from "next";
import Link from "next/link";
import { notFound } from "next/navigation";
import { ArrowUpRightIcon } from "@/components/icons";
import { ShowcaseVisual } from "@/components/showcase-visual";
import { SiteFooter } from "@/components/site-footer";
import { SiteHeader } from "@/components/site-header";
import { getShowcaseBySlug, showcaseEntries } from "@/data/showcase";

type ShowcaseDetailProps = { params: Promise<{ slug: string }> };

export function generateStaticParams() {
  return showcaseEntries.map((entry) => ({ slug: entry.slug }));
}

export async function generateMetadata({ params }: ShowcaseDetailProps): Promise<Metadata> {
  const entry = getShowcaseBySlug((await params).slug);
  return entry ? { title: entry.title, description: entry.summary } : {};
}

export default async function ShowcaseDetailPage({ params }: ShowcaseDetailProps) {
  const entry = getShowcaseBySlug((await params).slug);
  if (!entry) notFound();

  return (
    <>
      <SiteHeader />
      <main>
        <header className="case-hero">
          <div className="case-hero__inner">
            <Link className="breadcrumb" href="/showcase">← All learner work</Link>
            <div className="case-hero__grid">
              <div>
                <p>{entry.course} · {entry.domain} · Learner showcase</p>
                <h1>{entry.title}</h1>
                <span className="case-hero__byline">Built by <strong>{entry.learnerName}</strong></span>
              </div>
              <p className="case-hero__summary">{entry.summary}</p>
            </div>
          </div>
        </header>

        <section className="case-study">
          <ShowcaseVisual variant={entry.visual} />
          <div className="case-study__layout">
            <aside>
              <dl>
                <div><dt>Project</dt><dd>{entry.projectTitle}</dd></div>
                <div><dt>Tools</dt><dd>{entry.tools.join(", ")}</dd></div>
              </dl>
              <div className="case-study__links">
                <a href={entry.githubUrl} rel="noreferrer" target="_blank">View GitHub repository <ArrowUpRightIcon /></a>
                {entry.liveUrl && <a href={entry.liveUrl} rel="noreferrer" target="_blank">Open live project <ArrowUpRightIcon /></a>}
                {entry.projectSlug && <Link href={`/projects/${entry.projectSlug}`}>View original brief <ArrowUpRightIcon /></Link>}
              </div>
            </aside>

            <article className="case-study__content">
              <section><p>01</p><div><h2>The challenge</h2><p>{entry.challenge}</p></div></section>
              <section><p>02</p><div><h2>How I approached it</h2><ul>{entry.approach.map((item) => <li key={item}>{item}</li>)}</ul></div></section>
              <section><p>03</p><div><h2>What I found</h2><ol>{entry.findings.map((item) => <li key={item}>{item}</li>)}</ol></div></section>
              <section><p>04</p><div><h2>The outcome</h2><p>{entry.outcome}</p></div></section>
            </article>
          </div>
        </section>

        <section className="case-next-step">
          <div><span>Ready to build your own?</span><strong>Choose a brief and make it yours.</strong></div>
          <Link href="/#projects">Explore projects <ArrowUpRightIcon /></Link>
        </section>
      </main>
      <SiteFooter />
    </>
  );
}
