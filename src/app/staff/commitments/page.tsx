import { CommitmentList } from "@/components/staff/commitment-list";
import { getStaffCommitments } from "@/lib/data/commitments";

export const metadata = { title: "Learner commitments" };

export default async function StaffCommitmentsPage() {
  const commitments = await getStaffCommitments();

  return (
    <main className="staff-page">
      <div className="staff-page__heading">
        <div>
          <p className="staff-kicker">Project participation</p>
          <h1>Learner commitments</h1>
          <p>See who has chosen a project and when they joined.</p>
        </div>
      </div>
      <CommitmentList commitments={commitments} />
    </main>
  );
}
