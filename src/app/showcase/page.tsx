import Link from "next/link";
import { ArrowUpRightIcon } from "@/components/icons";
import { ShowcaseVisual } from "@/components/showcase-visual";
import { SiteFooter } from "@/components/site-footer";
import { SiteHeader } from "@/components/site-header";
import { showcaseEntries } from "@/data/showcase";

export const metadata = {
  title: "Learner showcase",
  description: "Explore data projects completed by ALX learners.",
};

export default function ShowcasePage() {
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

          <Link className="showcase-featured" href={`/showcase/${featured.slug}`}>
            <ShowcaseVisual variant={featured.visual} />
            <span className="showcase-featured__copy">
              <small>Featured work · {featured.course} · {featured.domain}</small>
              <strong>{featured.title}</strong>
              <span>{featured.summary}</span>
              <span className="showcase-featured__meta"><b>{featured.learnerName}</b><em>{featured.tools.join(" · ")}</em></span>
              <span className="showcase-featured__link">Read the case study <ArrowUpRightIcon /></span>
            </span>
          </Link>

          <div className="showcase-grid">
            {entries.map((entry, index) => (
              <Link className={`showcase-card showcase-card--${index + 1}`} href={`/showcase/${entry.slug}`} key={entry.slug}>
                <ShowcaseVisual compact variant={entry.visual} />
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
