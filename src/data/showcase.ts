export type ShowcaseEntry = {
  slug: string;
  title: string;
  learnerName: string;
  projectTitle: string;
  projectSlug?: string;
  course: string;
  domain: string;
  tools: string[];
  summary: string;
  challenge: string;
  approach: string[];
  findings: string[];
  outcome: string;
  githubUrl: string;
  liveUrl?: string;
  visual: "health" | "retail" | "commerce";
};

export const showcaseEntries: ShowcaseEntry[] = [
  {
    slug: "healthcare-service-coverage-dashboard",
    title: "Healthcare Service Coverage Dashboard",
    learnerName: "Sample learner",
    projectTitle: "Healthcare Facility Performance Tracker",
    projectSlug: "healthcare-facility-performance-tracker",
    course: "DA-2",
    domain: "Healthcare",
    tools: ["Google Sheets"],
    summary:
      "A clear facility-level tracker that helps programme managers spot service gaps and prioritise follow-up.",
    challenge:
      "Regional health data arrived with inconsistent names, mixed reporting periods, and no simple way to compare service coverage across facilities.",
    approach: [
      "Standardised facility and region labels in a documented cleaning sheet",
      "Built pivot tables for activity, coverage, and period-over-period change",
      "Designed a compact dashboard around the decisions a programme manager needs to make",
    ],
    findings: [
      "Three reporting units accounted for most of the decline in service coverage",
      "High patient volume did not consistently correspond with stronger coverage",
      "Missing reporting periods materially changed the initial facility ranking",
    ],
    outcome:
      "The final workbook gives a non-technical reader one place to identify underperforming facilities and understand the data-quality caveats behind the ranking.",
    githubUrl: "https://github.com/",
    visual: "health",
  },
  {
    slug: "regional-retail-performance-report",
    title: "Regional Retail Performance Report",
    learnerName: "Sample learner",
    projectTitle: "Retail Sales Performance Analysis",
    course: "DA-4",
    domain: "Retail",
    tools: ["Power BI", "Power Query"],
    summary:
      "An interactive report connecting product mix, regional performance, and seasonal sales patterns.",
    challenge:
      "Sales leaders needed to understand why revenue growth varied widely between regions despite similar order volumes.",
    approach: [
      "Modelled orders, products, and regional targets in a small star schema",
      "Created measures for growth, target attainment, and product contribution",
      "Built an executive view with drill-through into product and region detail",
    ],
    findings: [
      "Two regions grew volume while losing margin through product mix changes",
      "Seasonal promotions produced strong revenue but inconsistent target attainment",
      "A small group of product categories explained most regional variance",
    ],
    outcome:
      "The report makes the difference between sales volume and profitable performance visible without requiring leaders to inspect raw order data.",
    githubUrl: "https://github.com/",
    visual: "retail",
  },
  {
    slug: "ecommerce-customer-behaviour-analysis",
    title: "E-commerce Customer Behaviour Analysis",
    learnerName: "Sample learner",
    projectTitle: "Customer Purchase Pattern Analysis",
    course: "DA-3",
    domain: "E-commerce",
    tools: ["MySQL"],
    summary:
      "A reproducible SQL analysis of repeat purchasing, order frequency, and valuable customer segments.",
    challenge:
      "The commerce team had transaction data but no reliable definition of repeat customers or a shared view of purchasing frequency.",
    approach: [
      "Audited the relational model and documented join assumptions",
      "Built reusable queries for cohorts, frequency, and customer value",
      "Summarised the findings in a concise decision memo",
    ],
    findings: [
      "The most valuable cohort was not the group with the highest order count",
      "Repeat purchasing declined sharply after the second order",
      "Category breadth was a stronger retention signal than first-order value",
    ],
    outcome:
      "The final repository gives the team reusable SQL queries and a clearer basis for deciding which customer groups deserve retention attention.",
    githubUrl: "https://github.com/",
    visual: "commerce",
  },
];

export function getShowcaseBySlug(slug: string) {
  return showcaseEntries.find((entry) => entry.slug === slug);
}
