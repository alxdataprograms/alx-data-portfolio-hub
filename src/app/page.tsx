import Link from "next/link";
import { ArrowUpRightIcon } from "@/components/icons";
import { HeroFeature } from "@/components/hero-feature";
import { ProjectCatalogue } from "@/components/project-catalogue";
import { ShowcaseVisual } from "@/components/showcase-visual";
import { SiteFooter } from "@/components/site-footer";
import { SiteHeader } from "@/components/site-header";
import { projects } from "@/data/projects";
import { showcaseEntries } from "@/data/showcase";

export default function Home() {
  return (
    <>
      <SiteHeader />
      <main>
        <section className="hero">
          <div className="hero__inner">
            <div className="hero__copy">
              <p className="hero__kicker">Independent portfolio practice for ALX Data learners</p>
              <h1>Build work worth showing.</h1>
              <p className="hero__intro">
                Choose a real business problem, work with credible public data, and produce evidence of what you can do.
              </p>
              <div className="hero__actions">
                <Link className="primary-link" href="/projects">Explore projects <ArrowUpRightIcon /></Link>
                <Link className="secondary-link" href="/showcase">See what learners built <ArrowUpRightIcon /></Link>
              </div>
            </div>
            <HeroFeature />
          </div>
        </section>

        <section className="projects-section" id="projects">
          <div className="section-heading">
            <div>
              <p>Latest projects</p>
              <h2>Find your next brief</h2>
            </div>
            <p className="section-heading__description">
              Start with the newest project ideas, or explore the complete library when you want more choice.
            </p>
          </div>
          <ProjectCatalogue browseAllHref="/projects" initialLimit={6} projects={projects} />
        </section>

        <section className="home-showcase">
          <div className="home-showcase__heading">
            <div><p>Learner showcase</p><h2>See where a brief can lead.</h2></div>
            <div>
              <p>Completed work from learners who turned a project idea into evidence of what they can do.</p>
              <Link href="/showcase">Browse the showcase <ArrowUpRightIcon /></Link>
            </div>
          </div>
          <Link className="home-showcase__feature" href={`/showcase/${showcaseEntries[0].slug}`}>
            <ShowcaseVisual variant={showcaseEntries[0].visual} />
            <span className="home-showcase__feature-copy">
              <small>{showcaseEntries[0].course} · {showcaseEntries[0].domain} · {showcaseEntries[0].learnerName}</small>
              <strong>{showcaseEntries[0].title}</strong>
              <span>{showcaseEntries[0].summary}</span>
              <b>View the work <ArrowUpRightIcon /></b>
            </span>
          </Link>
        </section>
      </main>
      <SiteFooter />
    </>
  );
}
