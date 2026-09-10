import { notFound } from "next/navigation";
import { ShowcaseReview } from "@/components/staff/showcase-review";
import { getShowcaseBySlug, showcaseEntries } from "@/data/showcase";

type StaffShowcaseReviewProps = { params: Promise<{ slug: string }> };

export function generateStaticParams() {
  return showcaseEntries.map((entry) => ({ slug: entry.slug }));
}

export default async function StaffShowcaseReviewPage({ params }: StaffShowcaseReviewProps) {
  const entry = getShowcaseBySlug((await params).slug);
  if (!entry) notFound();
  return <ShowcaseReview entry={entry} />;
}
