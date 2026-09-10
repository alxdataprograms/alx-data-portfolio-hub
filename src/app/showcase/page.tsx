import Link from "next/link";
import { ArrowUpRightIcon } from "@/components/icons";
import { ShowcaseVisual } from "@/components/showcase-visual";
import { SiteFooter } from "@/components/site-footer";
import { SiteHeader } from "@/components/site-header";
import { getApprovedShowcases } from "@/lib/data/showcase";

export const metadata = {
  title: "Learner showcase",
  description: "Explore data projects completed by ALX learners.",
};

export default async function ShowcasePage() {
  const showcaseEntries = await getApprovedShowcases();
  const [featured, ...entries] = showcaseEntries;

  return (
    <>
      <SiteHeader />
      <main>
        <header className="showcase-hero">
          <div className="showcase-hero__inner">
            <div><p>Learner showcase</p><h1>Proof, not promises.</h1></div>
            <div>
              <p>Explore how learners turned open data, technical practice, and careful thinking into work they can stand behind.</p>
              <Link className="primary-link" href="/showcase/submit">Submit your work <ArrowUpRightIcon /></Link>
            </div>
          </div>
        </header>

        <section className="showcase-library">
          <div className="showcase-library__heading"><span>{showcaseEntries.length} showcases</span><span>Projects completed by ALX Data learners</span></div>

          {featured ? (
            <Link className="showcase-featured" href={`/showcase/${featured.slug}`}>
              <ShowcaseVisual alt={featured.title} src={featured.coverImageUrl} />
              <span className="showcase-featured__copy">
                <small>{["Featured work", featured.course, featured.domain].filter(Boolean).join(" · ")}</small>
                <strong>{featured.title}</strong>
                <span>{featured.summary}</span>
                <span className="showcase-featured__meta"><b>{featured.learnerName}</b><em>{featured.tools.join(" · ")}</em></span>
                <span className="showcase-featured__link">View the project <ArrowUpRightIcon /></span>
              </span>
            </Link>
          ) : (
            <div className="showcase-empty">
              <strong>No learner work has been approved yet.</strong>
              <p>Completed submissions will appear here after staff review.</p>
              <Link href="/showcase/submit">Submit your project <ArrowUpRightIcon /></Link>
            </div>
          )}

          <div className="showcase-grid">
            {entries.map((entry, index) => (
              <Link className={`showcase-card showcase-card--${index + 1}`} href={`/showcase/${entry.slug}`} key={entry.slug}>
                <ShowcaseVisual alt={entry.title} compact src={entry.coverImageUrl} />
                <span className="showcase-card__copy">
                  <small>{entry.course} · {entry.domain}</small>
                  <strong>{entry.title}</strong>
                  <span>{entry.summary}</span>
                  <span className="showcase-card__footer"><b>{entry.learnerName}</b><em>View work ↗</em></span>
                </span>
              </Link>
            ))}
          </div>

          <div className="showcase-submit-callout">
            <div><span>Built something you are proud of?</span><strong>Add your work to the showcase.</strong></div>
            <Link href="/showcase/submit">Submit your project <ArrowUpRightIcon /></Link>
          </div>
        </section>
      </main>
      <SiteFooter />
    </>
  );
}
