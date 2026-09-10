import { ProjectCatalogue } from "@/components/project-catalogue";
import { SiteFooter } from "@/components/site-footer";
import { SiteHeader } from "@/components/site-header";
import { projects } from "@/data/projects";

export const metadata = {
  title: "Project library",
  description: "Explore practical portfolio projects for ALX Data learners.",
};

export default function ProjectsPage() {
  return (
    <>
      <SiteHeader />
      <main>
        <header className="projects-index-hero">
          <div>
            <p>Project library</p>
            <h1>Choose a problem worth solving.</h1>
            <span>Search the complete collection by course, difficulty, industry, or skill.</span>
          </div>
        </header>
        <section className="projects-section projects-section--index">
          <ProjectCatalogue projects={projects} />
        </section>
      </main>
      <SiteFooter />
    </>
  );
}
