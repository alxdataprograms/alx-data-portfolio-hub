"use client";

import Link from "next/link";
import { useState } from "react";
import { ShowcaseVisual } from "@/components/showcase-visual";
import type { ShowcaseEntry } from "@/data/showcase";

export function ShowcaseReview({ entry }: { entry: ShowcaseEntry }) {
  const [decision, setDecision] = useState<"submitted" | "approved" | "declined">("submitted");

  return (
    <main className="staff-review-page">
      <div className="staff-review-topbar">
        <div><Link href="/staff/showcase">← Submissions</Link><span>/</span><strong>Review</strong></div>
        <div className="staff-review-actions">
          {decision === "submitted" ? <><button className="staff-decline" onClick={() => setDecision("declined")} type="button">Decline</button><button className="staff-approve" onClick={() => setDecision("approved")} type="button">Approve showcase</button></> : <><span className={`review-decision review-decision--${decision}`}>{decision === "approved" ? "Approved" : "Declined"}</span><button onClick={() => setDecision("submitted")} type="button">Undo decision</button></>}
        </div>
      </div>

      <div className="staff-review-layout">
        <div className="staff-review-main">
          <div className="staff-review-heading"><p className="staff-kicker">Submitted today</p><h1>{entry.title}</h1><span>Submitted by <strong>{entry.learnerName}</strong></span></div>
          <ShowcaseVisual variant={entry.visual} />
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
          <div><span>Learner email</span><strong>learner@example.com</strong><small>Private. Use only for submission follow-up.</small></div>
        </aside>
      </div>
    </main>
  );
}
