import type { Metadata } from "next";
import Link from "next/link";
import { notFound } from "next/navigation";
import { ArrowUpRightIcon, ClockIcon } from "@/components/icons";
import { MarkdownContent } from "@/components/markdown-content";
import { ProjectCommitment } from "@/components/project-commitment";
import { SiteFooter } from "@/components/site-footer";
import { SiteHeader } from "@/components/site-header";
import { getProjectBySlug, projects } from "@/data/projects";

type ProjectPageProps = {
  params: Promise<{ slug: string }>;
};

export function generateStaticParams() {
  return projects.map((project) => ({ slug: project.slug }));
}

export async function generateMetadata({ params }: ProjectPageProps): Promise<Metadata> {
  const { slug } = await params;
  const project = getProjectBySlug(slug);

  if (!project) {
    return {};
  }

  return {
    title: project.title,
    description: project.summary,
  };
}

export default async function ProjectPage({ params }: ProjectPageProps) {
  const { slug } = await params;
  const project = getProjectBySlug(slug);

  if (!project) {
    notFound();
  }

  return (
    <>
      <SiteHeader />
      <main>
        <header className="project-hero">
          <div className="project-hero__inner">
            <Link className="breadcrumb" href="/projects">
              <span aria-hidden="true">←</span>
              All projects
            </Link>

            <div className="project-hero__grid">
              <div>
                <p className="project-hero__kicker">
                  {project.course} · {project.courseName} · {project.domain}
                </p>
                <h1>{project.title}</h1>
                <p className="project-hero__summary">{project.summary}</p>
              </div>

              <div className="project-hero__aside">
                <dl className="project-facts">
                  <div>
                    <dt>Level</dt>
                    <dd>{project.difficulty}</dd>
                  </div>
                  <div>
                    <dt>Time</dt>
                    <dd><ClockIcon />{project.estimatedTime}</dd>
                  </div>
                  <div>
                    <dt>Tools</dt>
                    <dd>{project.tools.join(", ")}</dd>
                  </div>
                </dl>
                <ProjectCommitment projectTitle={project.title} />
              </div>
            </div>
          </div>
        </header>

        <div className="project-layout">
          <aside className="project-aside">
            <p>Skills you will practise</p>
            <ul>
              {project.skills.map((skill) => (
                <li key={skill}>{skill}</li>
              ))}
            </ul>
            <a href={project.datasetUrl} rel="noreferrer" target="_blank">
              View source dataset
              <ArrowUpRightIcon />
            </a>
          </aside>

          <article>
            <MarkdownContent>{project.contentMarkdown}</MarkdownContent>
          </article>
        </div>
      </main>
      <SiteFooter />
    </>
  );
}
