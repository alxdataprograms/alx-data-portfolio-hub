"use client";

import Link from "next/link";
import { useMemo, useState } from "react";
import { formatDate } from "@/lib/format-date";
import type { StaffProject } from "@/types/project";

type StaffProjectListProps = { projects: StaffProject[] };
type StatusFilter = "All" | "Drafts" | "Published";

export function StaffProjectList({ projects }: StaffProjectListProps) {
  const [query, setQuery] = useState("");
  const [status, setStatus] = useState<StatusFilter>("All");

  const visibleProjects = useMemo(() => {
    const normalized = query.trim().toLowerCase();
    return projects.filter((project) => {
      const matchesStatus = status === "All" || (status === "Drafts" ? project.status === "draft" : project.status === "published");
      const matchesQuery = !normalized || [project.title, project.domain, project.course, project.courseName, ...project.skills]
        .join(" ")
        .toLowerCase()
        .includes(normalized);
      return matchesStatus && matchesQuery;
    });
  }, [projects, query, status]);

  return (
    <section className="staff-projects-panel">
      <div className="staff-list-toolbar">
        <label className="staff-list-search">
          <span className="sr-only">Search staff projects</span>
          <span aria-hidden="true">⌕</span>
          <input
            onChange={(event) => setQuery(event.target.value)}
            placeholder="Search projects"
            type="search"
            value={query}
          />
        </label>
        <div className="staff-list-tabs" aria-label="Filter projects">
          {(["All", "Drafts", "Published"] as StatusFilter[]).map((option) => (
            <button
              aria-pressed={status === option}
              className={status === option ? "is-active" : ""}
              key={option}
              onClick={() => setStatus(option)}
              type="button"
            >
              {option}
            </button>
          ))}
        </div>
      </div>

      {visibleProjects.length ? (
        <div className="staff-table-wrap">
          <table className="staff-project-table">
            <thead>
              <tr>
                <th>Project</th><th>Course</th><th>Status</th><th>Updated</th><th><span className="sr-only">Actions</span></th>
              </tr>
            </thead>
            <tbody>
              {visibleProjects.map((project) => (
                <tr key={project.slug}>
                  <td><strong>{project.title}</strong><span>{project.domain} · {project.difficulty}</span></td>
                  <td>{project.course}<span>{project.courseName}</span></td>
                  <td><span className={`status status--${project.status}`}>{project.status}</span></td>
                  <td>{formatDate(project.updatedAt)}</td>
                  <td><Link href={`/staff/projects/${project.slug}/edit`}>Edit <span aria-hidden="true">→</span></Link></td>
                </tr>
              ))}
            </tbody>
          </table>
        </div>
      ) : (
        <div className="staff-list-empty">
          <strong>{status === "Drafts" ? "No draft projects yet." : "No projects match that search."}</strong>
          <p>{status === "Drafts" ? "New projects will appear here as soon as a draft is saved." : "Try a different title, domain, course, or skill."}</p>
        </div>
      )}
    </section>
  );
}
