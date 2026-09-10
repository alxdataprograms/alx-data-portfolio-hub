import { ShowcaseReviewList } from "@/components/staff/showcase-review-list";
import { getStaffShowcaseSubmissions } from "@/lib/data/showcase";

export const metadata = { title: "Showcase submissions" };

export default async function StaffShowcasePage() {
  const submissions = await getStaffShowcaseSubmissions();
  const submitted = submissions.filter((entry) => entry.status === "submitted").length;
  const approved = submissions.filter((entry) => entry.status === "approved").length;
  const declined = submissions.filter((entry) => entry.status === "declined").length;

  return (
    <main className="staff-page">
      <div className="staff-page__heading">
        <div><p className="staff-kicker">Learner showcase</p><h1>Submissions</h1><p>Review completed learner work before it appears publicly.</p></div>
      </div>
      <section className="staff-overview staff-overview--four" aria-label="Submission overview">
        <div><strong>{submissions.length}</strong><span>All submissions</span></div><div><strong>{submitted}</strong><span>Awaiting review</span></div><div><strong>{approved}</strong><span>Approved</span></div><div><strong>{declined}</strong><span>Declined</span></div>
      </section>
      <ShowcaseReviewList submissions={submissions} />
    </main>
  );
}
