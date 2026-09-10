import { notFound } from "next/navigation";
import { ProjectEditor } from "@/components/staff/project-editor";
import { getProjectBySlug, projects } from "@/data/projects";

type EditProjectPageProps = { params: Promise<{ slug: string }> };

export function generateStaticParams() {
  return projects.map((project) => ({ slug: project.slug }));
}

export default async function EditProjectPage({ params }: EditProjectPageProps) {
  const { slug } = await params;
  const project = getProjectBySlug(slug);
  if (!project) notFound();
  return <ProjectEditor project={project} />;
}
