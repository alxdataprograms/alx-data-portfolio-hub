"use client";

import Link from "next/link";
import type { FormEvent } from "react";
import { useState } from "react";
import { projects } from "@/data/projects";

export function ShowcaseSubmissionForm() {
  const [fileName, setFileName] = useState("");
  const [submitted, setSubmitted] = useState(false);

  function submit(event: FormEvent<HTMLFormElement>) {
    event.preventDefault();
    setSubmitted(true);
    window.scrollTo({ top: 0, behavior: "smooth" });
  }

  if (submitted) {
    return (
      <div className="submission-success">
        <span aria-hidden="true">✓</span>
        <p>Submission received</p>
        <h1>Your work is ready for review.</h1>
        <p>ALX staff will review the project before it appears in the public showcase.</p>
        <div><Link href="/showcase">Browse learner work</Link><button onClick={() => setSubmitted(false)} type="button">Submit another project</button></div>
      </div>
    );
  }

  return (
    <form className="submission-form" onSubmit={submit}>
      <section>
        <div className="submission-section-heading"><span>01</span><div><h2>About you</h2><p>Your email is used for submission follow-up and is never shown publicly.</p></div></div>
        <div className="submission-fields">
          <label><span>Name</span><input name="name" required /></label>
          <label><span>Email</span><input name="email" required type="email" /></label>
        </div>
      </section>

      <section>
        <div className="submission-section-heading"><span>02</span><div><h2>About the project</h2><p>Give the work a clear title and connect it to the brief you completed.</p></div></div>
        <div className="submission-fields">
          <label className="is-wide"><span>Showcase title</span><input name="title" placeholder="e.g. Healthcare Service Coverage Dashboard" required /></label>
          <label className="is-wide"><span>Project completed</span><select name="project" required defaultValue=""><option disabled value="">Select a project</option>{projects.map((project) => <option key={project.slug}>{project.title}</option>)}<option>Another ALX Data project</option></select></label>
          <label className="is-wide"><span>What did you build and why does it matter?</span><textarea maxLength={600} name="summary" placeholder="Describe the problem, your approach, and the value of the finished work." required rows={6} /></label>
          <label><span>Tools used</span><input name="tools" placeholder="Power BI, MySQL, Google Sheets" required /></label>
          <label><span>GitHub repository</span><input name="github" placeholder="https://github.com/..." required type="url" /></label>
          <label className="is-wide"><span>Live project or dashboard link <em>Optional</em></span><input name="liveUrl" placeholder="https://..." type="url" /></label>
        </div>
      </section>

      <section>
        <div className="submission-section-heading"><span>03</span><div><h2>Show the work</h2><p>Add one strong image that makes the result understandable at a glance.</p></div></div>
        <label className="submission-upload">
          <input accept="image/png,image/jpeg,image/webp" onChange={(event) => setFileName(event.target.files?.[0]?.name ?? "")} required type="file" />
          <span aria-hidden="true">＋</span>
          <strong>{fileName || "Add a cover image"}</strong>
          <small>{fileName ? "Choose a different image" : "PNG, JPG, or WebP. Dashboard screenshots work well."}</small>
        </label>
      </section>

      <section className="submission-confirmation">
        <label><input required type="checkbox" /><span>I confirm that this is my work and that ALX may display the submitted name, project details, links, and cover image in the public showcase.</span></label>
        <button type="submit">Submit for review <span aria-hidden="true">↗</span></button>
      </section>
    </form>
  );
}
