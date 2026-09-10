"use client";

import Link from "next/link";
import { useMemo, useState } from "react";
import { showcaseEntries } from "@/data/showcase";

type ReviewStatus = "All" | "Submitted" | "Approved" | "Declined";

const submissions = showcaseEntries.map((entry, index) => ({ ...entry, status: index < 2 ? "Submitted" : "Approved", submitted: index === 0 ? "Today" : index === 1 ? "Yesterday" : "3 days ago" }));

export function ShowcaseReviewList() {
  const [status, setStatus] = useState<ReviewStatus>("Submitted");
  const [query, setQuery] = useState("");

  const visible = useMemo(() => submissions.filter((entry) => {
    const matchesStatus = status === "All" || entry.status === status;
    const searchable = `${entry.title} ${entry.learnerName} ${entry.projectTitle}`.toLowerCase();
    return matchesStatus && searchable.includes(query.toLowerCase().trim());
  }), [query, status]);

  return (
    <section className="staff-projects-panel">
      <div className="staff-list-toolbar">
        <label className="staff-list-search"><span className="sr-only">Search showcase submissions</span><span aria-hidden="true">⌕</span><input onChange={(event) => setQuery(event.target.value)} placeholder="Search submissions" type="search" value={query} /></label>
        <div className="staff-list-tabs" aria-label="Filter showcase submissions">
          {(["All", "Submitted", "Approved", "Declined"] as ReviewStatus[]).map((option) => <button aria-pressed={status === option} className={status === option ? "is-active" : ""} key={option} onClick={() => setStatus(option)} type="button">{option}</button>)}
        </div>
      </div>
      {visible.length ? (
        <div className="staff-table-wrap">
          <table className="staff-project-table staff-submission-table">
            <thead><tr><th>Submission</th><th>Learner</th><th>Status</th><th>Submitted</th><th><span className="sr-only">Actions</span></th></tr></thead>
            <tbody>{visible.map((entry) => (
              <tr key={entry.slug}>
                <td><strong>{entry.title}</strong><span>{entry.projectTitle}</span></td>
                <td>{entry.learnerName}</td>
                <td><span className={`status status--${entry.status.toLowerCase()}`}>{entry.status}</span></td>
                <td>{entry.submitted}</td>
                <td><Link href={`/staff/showcase/${entry.slug}`}>{entry.status === "Submitted" ? "Review" : "View"} <span aria-hidden="true">→</span></Link></td>
              </tr>
            ))}</tbody>
          </table>
        </div>
      ) : <div className="staff-list-empty"><strong>No submissions here.</strong><p>Try another status or search term.</p></div>}
    </section>
  );
}
