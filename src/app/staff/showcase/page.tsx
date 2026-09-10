import { ShowcaseReviewList } from "@/components/staff/showcase-review-list";

export const metadata = { title: "Showcase submissions" };

export default function StaffShowcasePage() {
  return (
    <main className="staff-page">
      <div className="staff-page__heading">
        <div><p className="staff-kicker">Learner showcase</p><h1>Submissions</h1><p>Review completed learner work before it appears publicly.</p></div>
      </div>
      <section className="staff-overview staff-overview--four" aria-label="Submission overview">
        <div><strong>3</strong><span>All submissions</span></div><div><strong>2</strong><span>Awaiting review</span></div><div><strong>1</strong><span>Approved</span></div><div><strong>0</strong><span>Declined</span></div>
      </section>
      <ShowcaseReviewList />
    </main>
  );
}
