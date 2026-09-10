export type ShowcaseStatus = "submitted" | "approved" | "declined";

export type ShowcaseEntry = {
  id: string;
  slug: string;
  title: string;
  learnerName: string;
  learnerEmail?: string;
  projectTitle: string;
  projectSlug?: string;
  course?: string;
  domain?: string;
  tools: string[];
  summary: string;
  githubUrl: string;
  liveUrl?: string;
  coverImagePath: string;
  coverImageUrl: string;
  status: ShowcaseStatus;
  submittedAt: string;
};
