"use client";

import Link from "next/link";
import { useMemo, useState } from "react";
import { formatDate } from "@/lib/format-date";
import type { LearnerCommitment } from "@/types/commitment";

const allProjects = "All projects";

export function CommitmentList({ commitments }: { commitments: LearnerCommitment[] }) {
  const [query, setQuery] = useState("");
  const [project, setProject] = useState(allProjects);
  const projectOptions = [allProjects, ...Array.from(new Set(commitments.map((commitment) => commitment.projectTitle)))];

  const visible = useMemo(() => {
    const normalizedQuery = query.trim().toLowerCase();

    return commitments.filter((commitment) => {
      const searchable = `${commitment.learnerName} ${commitment.email} ${commitment.projectTitle}`.toLowerCase();
      return (
        (!normalizedQuery || searchable.includes(normalizedQuery)) &&
        (project === allProjects || commitment.projectTitle === project)
      );
    });
  }, [commitments, project, query]);

  return (
    <section className="staff-projects-panel staff-commitments-panel">
      <div className="staff-list-toolbar">
        <label className="staff-list-search">
          <span className="sr-only">Search learner commitments</span>
          <span aria-hidden="true">⌕</span>
          <input
            onChange={(event) => setQuery(event.target.value)}
            placeholder="Search name, email, or project"
            type="search"
            value={query}
          />
        </label>

        <label className="staff-commitment-filter">
          <span>Project</span>
          <select onChange={(event) => setProject(event.target.value)} value={project}>
            {projectOptions.map((option) => <option key={option}>{option}</option>)}
          </select>
        </label>
      </div>

      <div className="staff-commitment-summary" aria-live="polite">
        {visible.length} commitment{visible.length === 1 ? "" : "s"}
      </div>

      {visible.length ? (
        <div className="staff-table-wrap">
          <table className="staff-project-table staff-commitment-table">
            <thead>
              <tr><th>Learner</th><th>Project</th><th>Joined</th><th><span className="sr-only">Actions</span></th></tr>
            </thead>
            <tbody>
              {visible.map((commitment) => (
                <tr key={commitment.id}>
                  <td><strong>{commitment.learnerName}</strong><span>{commitment.email}</span></td>
                  <td>{commitment.projectTitle}</td>
                  <td>{formatDate(commitment.createdAt)}</td>
                  <td><Link href={`/projects/${commitment.projectSlug}`}>View project <span aria-hidden="true">→</span></Link></td>
                </tr>
              ))}
            </tbody>
          </table>
        </div>
      ) : (
        <div className="staff-list-empty"><strong>No commitments found.</strong><p>Try another project or search term.</p></div>
      )}
    </section>
  );
}
