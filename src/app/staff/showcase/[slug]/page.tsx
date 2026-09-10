import { notFound } from "next/navigation";
import { ShowcaseReview } from "@/components/staff/showcase-review";
import { getStaffShowcaseBySlug } from "@/lib/data/showcase";

type StaffShowcaseReviewProps = { params: Promise<{ slug: string }> };

export default async function StaffShowcaseReviewPage({ params }: StaffShowcaseReviewProps) {
  const entry = await getStaffShowcaseBySlug((await params).slug);
  if (!entry) notFound();
  return <ShowcaseReview entry={entry} />;
}
