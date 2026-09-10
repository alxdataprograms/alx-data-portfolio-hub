import Link from "next/link";
import { StaffProjectList } from "@/components/staff/staff-project-list";
import { projects } from "@/data/projects";

export const metadata = {
  title: "Staff projects",
  description: "Create and maintain ALX Data portfolio project briefs.",
};

export default function StaffProjectsPage() {
  return (
    <main className="staff-page">
      <div className="staff-page__heading">
        <div>
          <p className="staff-kicker">Project library</p>
          <h1>Projects</h1>
          <p>Create, improve, and publish briefs for learners.</p>
        </div>
        <Link className="staff-primary-action" href="/staff/projects/new">
          <span aria-hidden="true">＋</span> New project
        </Link>
      </div>

      <section className="staff-overview" aria-label="Project overview">
        <div><strong>{projects.length}</strong><span>All projects</span></div>
        <div><strong>{projects.length}</strong><span>Published</span></div>
        <div><strong>0</strong><span>Drafts</span></div>
      </section>

      <StaffProjectList projects={projects} />
    </main>
  );
}
