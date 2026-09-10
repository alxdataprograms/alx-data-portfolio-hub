import { notFound } from "next/navigation";
import { ProjectEditor } from "@/components/staff/project-editor";
import { getStaffProjectBySlug } from "@/lib/data/projects";

type EditProjectPageProps = { params: Promise<{ slug: string }> };

export default async function EditProjectPage({ params }: EditProjectPageProps) {
  const { slug } = await params;
  const project = await getStaffProjectBySlug(slug);
  if (!project) notFound();
  return <ProjectEditor project={project} />;
}
