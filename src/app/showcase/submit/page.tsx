import Link from "next/link";
import { ShowcaseSubmissionForm } from "@/components/showcase-submission-form";
import { SiteFooter } from "@/components/site-footer";
import { SiteHeader } from "@/components/site-header";
import { getPublishedProjects } from "@/lib/data/projects";

export const metadata = { title: "Submit your work", description: "Submit a completed ALX Data project for the learner showcase." };

export default async function SubmitShowcasePage() {
  const projects = await getPublishedProjects();

  return (
    <>
      <SiteHeader />
      <main className="submission-page">
        <header className="submission-hero">
          <Link href="/showcase">← Learner showcase</Link>
          <p>Share your work</p>
          <h1>Put your project forward.</h1>
          <span>Show what you built, how you approached it, and what you learned from the evidence.</span>
        </header>
        <ShowcaseSubmissionForm projects={projects.map(({ slug, title }) => ({ slug, title }))} />
      </main>
      <SiteFooter />
    </>
  );
}
