"use client";

import Link from "next/link";
import { useRouter } from "next/navigation";
import { useState, useTransition } from "react";
import { decideShowcaseAction } from "@/app/actions/showcase";
import { ShowcaseVisual } from "@/components/showcase-visual";
import { formatDate } from "@/lib/format-date";
import type { ShowcaseEntry, ShowcaseStatus } from "@/types/showcase";

export function ShowcaseReview({ entry }: { entry: ShowcaseEntry }) {
  const router = useRouter();
  const [decision, setDecision] = useState<ShowcaseStatus>(entry.status);
  const [message, setMessage] = useState("");
  const [pending, startTransition] = useTransition();

  function decide(status: ShowcaseStatus) {
    setMessage("");
    startTransition(async () => {
      const result = await decideShowcaseAction(entry.id, status);
      setMessage(result.message);
      if (result.ok) {
        setDecision(status);
        router.refresh();
      }
    });
  }

  return (
    <main className="staff-review-page">
      <div className="staff-review-topbar">
        <div><Link href="/staff/showcase">← Submissions</Link><span>/</span><strong>Review</strong></div>
        <div className="staff-review-actions">
          {message && <span className="staff-save-state" role="status">{message}</span>}
          {decision === "submitted" ? <><button className="staff-decline" disabled={pending} onClick={() => decide("declined")} type="button">Decline</button><button className="staff-approve" disabled={pending} onClick={() => decide("approved")} type="button">Approve showcase</button></> : <><span className={`review-decision review-decision--${decision}`}>{decision === "approved" ? "Approved" : "Declined"}</span><button disabled={pending} onClick={() => decide("submitted")} type="button">Reopen submission</button></>}
        </div>
      </div>

      <div className="staff-review-layout">
        <div className="staff-review-main">
          <div className="staff-review-heading"><p className="staff-kicker">Submitted {formatDate(entry.submittedAt)}</p><h1>{entry.title}</h1><span>Submitted by <strong>{entry.learnerName}</strong></span></div>
          <ShowcaseVisual alt={entry.title} src={entry.coverImageUrl} />
          <section className="staff-review-content">
            <div><span>Project completed</span><strong>{entry.projectTitle}</strong></div>
            <div><span>Submission summary</span><p>{entry.summary}</p></div>
            <div><span>Tools used</span><p>{entry.tools.join(", ")}</p></div>
            <div><span>Links</span><p><a href={entry.githubUrl} rel="noreferrer" target="_blank">GitHub repository ↗</a>{entry.liveUrl && <a href={entry.liveUrl} rel="noreferrer" target="_blank">Live project ↗</a>}</p></div>
          </section>
        </div>
        <aside className="staff-review-aside">
          <p>Review checklist</p>
          <ul><li><span>✓</span>Submission belongs to the learner</li><li><span>✓</span>Links open correctly</li><li><span>✓</span>Summary clearly explains the work</li><li><span>✓</span>Cover image is suitable for public display</li></ul>
          <div><span>Learner email</span><strong>{entry.learnerEmail}</strong><small>Private. Use only for submission follow-up.</small></div>
        </aside>
      </div>
    </main>
  );
}
