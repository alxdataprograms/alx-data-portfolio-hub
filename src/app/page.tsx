import Link from "next/link";
import type { CSSProperties } from "react";
import { ArrowUpRightIcon } from "@/components/icons";
import { ProjectCatalogue } from "@/components/project-catalogue";
import { SiteFooter } from "@/components/site-footer";
import { SiteHeader } from "@/components/site-header";
import { projects } from "@/data/projects";

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
              <Link className="primary-link" href="#projects">
                Explore projects
                <ArrowUpRightIcon />
              </Link>
            </div>

            <div className="brief-visual" aria-label="A project brief with three stages">
              <div className="brief-visual__topline">
                <span>Project brief</span>
                <span>DA-2 / 01</span>
              </div>
              <p className="brief-visual__title">From raw data to a decision someone can use.</p>
              <div className="brief-visual__plot" aria-hidden="true">
                <span style={{ "--bar-size": "72%" } as CSSProperties}>Clean</span>
                <span style={{ "--bar-size": "88%" } as CSSProperties}>Analyse</span>
                <span style={{ "--bar-size": "62%" } as CSSProperties}>Explain</span>
              </div>
              <div className="brief-visual__footer">
                <span>Real dataset</span>
                <span>Portfolio-ready output</span>
              </div>
            </div>
          </div>
        </section>

        <section className="projects-section" id="projects">
          <div className="section-heading">
            <div>
              <p>Project library</p>
              <h2>Find your next brief</h2>
            </div>
            <p className="section-heading__description">
              Start with the course you have completed, then choose a problem that points toward the work you want next.
            </p>
          </div>
          <ProjectCatalogue projects={projects} />
        </section>
      </main>
      <SiteFooter />
    </>
  );
}
