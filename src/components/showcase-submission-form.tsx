"use client";

import Link from "next/link";
import type { FormEvent } from "react";
import { useState } from "react";
import { submitShowcaseAction } from "@/app/actions/showcase";
import { createClient } from "@/lib/supabase/client";

type ProjectOption = { slug: string; title: string };

const extensionByType: Record<string, string> = {
  "image/jpeg": "jpg",
  "image/png": "png",
  "image/webp": "webp",
};

export function ShowcaseSubmissionForm({ projects }: { projects: ProjectOption[] }) {
  const [fileName, setFileName] = useState("");
  const [selectedProject, setSelectedProject] = useState("");
  const [submitted, setSubmitted] = useState(false);
  const [pending, setPending] = useState(false);
  const [error, setError] = useState("");

  async function submit(event: FormEvent<HTMLFormElement>) {
    event.preventDefault();
    setError("");
    setPending(true);

    const form = new FormData(event.currentTarget);
    const image = form.get("coverImage");
    if (!(image instanceof File) || !image.size) {
      setError("Add a cover image before submitting.");
      setPending(false);
      return;
    }

    const extension = extensionByType[image.type];
    if (!extension || image.size > 5 * 1024 * 1024) {
      setError("Use a PNG, JPG, or WebP image no larger than 5 MB.");
      setPending(false);
      return;
    }

    const id = crypto.randomUUID();
    const coverImagePath = `${id}/cover.${extension}`;
    const supabase = createClient();
    const { error: uploadError } = await supabase.storage
      .from("showcase-submissions")
      .upload(coverImagePath, image, { contentType: image.type, upsert: false });

    if (uploadError) {
      setError(uploadError.message);
      setPending(false);
      return;
    }

    const result = await submitShowcaseAction({
      id,
      projectSlug: selectedProject === "other" ? "" : selectedProject,
      projectTitle: selectedProject === "other" ? String(form.get("otherProjectTitle") ?? "") : "",
      learnerName: String(form.get("name") ?? ""),
      learnerEmail: String(form.get("email") ?? ""),
      title: String(form.get("title") ?? ""),
      summary: String(form.get("summary") ?? ""),
      tools: String(form.get("tools") ?? "").split(",").map((tool) => tool.trim()).filter(Boolean),
      githubUrl: String(form.get("github") ?? ""),
      liveUrl: String(form.get("liveUrl") ?? ""),
      coverImagePath,
      consented: form.get("consent") === "on",
    });

    if (!result.ok) {
      setError(result.message);
      setPending(false);
      return;
    }

    setSubmitted(true);
    setPending(false);
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
          <label><span>Name</span><input autoComplete="name" name="name" required /></label>
          <label><span>Email</span><input autoComplete="email" name="email" required type="email" /></label>
        </div>
      </section>

      <section>
        <div className="submission-section-heading"><span>02</span><div><h2>About the project</h2><p>Give the work a clear title and connect it to the brief you completed.</p></div></div>
        <div className="submission-fields">
          <label className="is-wide"><span>Showcase title</span><input name="title" placeholder="e.g. Healthcare Service Coverage Dashboard" required /></label>
          <label className="is-wide"><span>Project completed</span><select name="project" onChange={(event) => setSelectedProject(event.target.value)} required value={selectedProject}><option disabled value="">Select a project</option>{projects.map((project) => <option key={project.slug} value={project.slug}>{project.title}</option>)}<option value="other">Another ALX Data project</option></select></label>
          {selectedProject === "other" && <label className="is-wide"><span>Project name</span><input name="otherProjectTitle" placeholder="Name the project you completed" required /></label>}
          <label className="is-wide"><span>What did you build and why does it matter?</span><textarea maxLength={1000} minLength={20} name="summary" placeholder="Describe the problem, your approach, and the value of the finished work." required rows={6} /></label>
          <label><span>Tools used</span><input name="tools" placeholder="Power BI, MySQL, Google Sheets" required /></label>
          <label><span>GitHub repository</span><input name="github" placeholder="https://github.com/..." required type="url" /></label>
          <label className="is-wide"><span>Live project or dashboard link <em>Optional</em></span><input name="liveUrl" placeholder="https://..." type="url" /></label>
        </div>
      </section>

      <section>
        <div className="submission-section-heading"><span>03</span><div><h2>Show the work</h2><p>Add one strong image that makes the result understandable at a glance.</p></div></div>
        <label className="submission-upload">
          <input accept="image/png,image/jpeg,image/webp" name="coverImage" onChange={(event) => setFileName(event.target.files?.[0]?.name ?? "")} required type="file" />
          <span aria-hidden="true">＋</span>
          <strong>{fileName || "Add a cover image"}</strong>
          <small>{fileName ? "Choose a different image" : "PNG, JPG, or WebP, up to 5 MB. Dashboard screenshots work well."}</small>
        </label>
      </section>

      <section className="submission-confirmation">
        <label><input name="consent" required type="checkbox" /><span>I confirm that this is my work and that ALX may display the submitted name, project details, links, and cover image in the public showcase.</span></label>
        <button disabled={pending} type="submit">{pending ? "Submitting…" : "Submit for review"} <span aria-hidden="true">↗</span></button>
        {error && <p className="form-error" role="alert">{error}</p>}
      </section>
    </form>
  );
}
