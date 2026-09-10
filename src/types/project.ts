export type ProjectStatus = "draft" | "published";

export type Project = {
  slug: string;
  title: string;
  course: string;
  courseName: string;
  domain: string;
  difficulty: "Beginner" | "Intermediate" | "Advanced";
  estimatedTime: string;
  skills: string[];
  tools: string[];
  summary: string;
  datasetUrl: string;
  contentMarkdown: string;
};

export type StaffProject = Project & {
  id: string;
  status: ProjectStatus;
  updatedAt: string;
};
