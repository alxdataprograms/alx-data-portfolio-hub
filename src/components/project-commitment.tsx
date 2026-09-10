"use client";

import type { FormEvent } from "react";
import { useState, useTransition } from "react";
import { createCommitmentAction } from "@/app/actions/commitments";

type CommitmentState = "closed" | "open" | "submitted";

export function ProjectCommitment({ projectSlug, projectTitle }: { projectSlug: string; projectTitle: string }) {
  const [state, setState] = useState<CommitmentState>("closed");
  const [error, setError] = useState("");
  const [pending, startTransition] = useTransition();

  function submit(event: FormEvent<HTMLFormElement>) {
    event.preventDefault();
    const form = new FormData(event.currentTarget);
    setError("");
    startTransition(async () => {
      const result = await createCommitmentAction({
        projectSlug,
        learnerName: String(form.get("name") ?? ""),
        email: String(form.get("email") ?? ""),
        consented: form.get("consent") === "on",
      });
      if (result.ok) setState("submitted");
      else setError(result.message);
    });
  }

  if (state === "submitted") {
    return (
      <div className="project-commitment project-commitment--success" role="status">
        <span aria-hidden="true">✓</span>
        <div>
          <strong>You’re building this project.</strong>
          <p>We’ll only use your details for project follow-up.</p>
        </div>
      </div>
    );
  }

  if (state === "open") {
    return (
      <form className="project-commitment project-commitment__form" onSubmit={submit}>
        <div className="project-commitment__heading">
          <strong>Count yourself in.</strong>
          <p>Tell us who is taking on {projectTitle}.</p>
        </div>

        <label>
          <span>Name</span>
          <input autoComplete="name" autoFocus name="name" required />
        </label>

        <label>
          <span>Email</span>
          <input autoComplete="email" name="email" required type="email" />
        </label>

        <label className="project-commitment__consent">
          <input name="consent" required type="checkbox" />
          <span>ALX may use my name and email to follow up about this project. My details will not be shown publicly.</span>
        </label>

        <div className="project-commitment__actions">
          <button disabled={pending} type="submit">{pending ? "Saving…" : "Count me in"} <span aria-hidden="true">↗</span></button>
          <button disabled={pending} onClick={() => setState("closed")} type="button">Not now</button>
        </div>
        {error && <p className="form-error" role="alert">{error}</p>}
      </form>
    );
  }

  return (
    <div className="project-commitment">
      <button
        className="project-commitment__trigger"
        onClick={() => setState("open")}
        type="button"
      >
        <span>I’m building this</span>
        <b aria-hidden="true">↗</b>
      </button>
      <p className="project-commitment__hint">Let us know so we can follow up on your progress.</p>
    </div>
  );
}
