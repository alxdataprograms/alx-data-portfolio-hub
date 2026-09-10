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

export const projects: Project[] = [
  {
    slug: "healthcare-facility-performance-tracker",
    title: "Healthcare Facility Performance Tracker",
    course: "DA-2",
    courseName: "Google Sheets",
    domain: "Healthcare",
    difficulty: "Beginner",
    estimatedTime: "6–10 hours",
    skills: ["Data cleaning", "Pivot tables", "Charts", "Functions"],
    tools: ["Google Sheets"],
    summary:
      "Analyse outpatient activity across health facilities, identify performance gaps, and give programme managers a clear basis for action.",
    datasetUrl: "https://www.who.int/data/gho",
    contentMarkdown: `## Business Challenge

You have been engaged as a data analyst by a regional health ministry that oversees outpatient care across a network of public health facilities in several African countries. Leadership has noticed wide variation in patient volumes and service delivery between facilities, but has no consolidated view of what is happening on the ground.

Your task is to build a clean, structured performance tracker in Google Sheets that gives programme managers a clear picture of facility-level activity and surfaces the two or three facilities that most urgently need attention.

## Background

Outpatient facility data across public health systems is often scattered, inconsistently formatted, and difficult to compare facility-to-facility. Before meaningful analysis can happen, a data analyst has to standardise the data and design a structure that non-technical stakeholders can understand.

This project simulates the first-pass analytics work a data analyst would do for a ministry of health or health-focused NGO: turning a raw facility export into something a programme director can open and understand in five minutes.

## Project Objective

Build a facility performance tracker in Google Sheets that consolidates outpatient activity data, surfaces performance gaps between facilities, and gives programme managers an actionable view for resource planning.

## Learning Objectives

By completing this project, you will demonstrate the ability to:

- Clean and standardise messy real-world health facility data
- Design pivot tables that summarise activity by facility, region, and time period
- Build charts that make facility comparisons clear to a non-technical reader
- Use spreadsheet functions to calculate performance indicators from raw records
- Communicate facility-level findings in a way a programme manager can act on

## Dataset Information

| Field | Details |
| --- | --- |
| Dataset name | Global Health Observatory: Health Service Coverage Data |
| Publisher | World Health Organization (WHO) |
| Description | Facility and country-level indicators covering outpatient visits, service coverage, and health workforce data |
| File format | CSV or XLSX |
| Approximate size | 5–15 MB depending on indicator selection |
| Licence | WHO open-data terms; attribution required |
| Download | [WHO Global Health Observatory](https://www.who.int/data/gho) |
| Access | Free; no account required |
| Known limitations | The data is aggregated at country or regional level. Treat reporting units as facilities for this exercise and document that substitution. |
| Last verified | July 2026 |

## Project Tasks

### Stage 1: Data Cleaning and Preparation

- Import the raw indicator export and audit missing values, inconsistent region names, and duplicate rows
- Standardise date periods, region or facility names, and indicator units
- Document every cleaning decision in a separate log tab
- Calculate period-over-period change and per-capita visit rate where population data is available

### Stage 2: Analysis

- Build pivot tables summarising outpatient activity by region and time period
- Identify the regions or facilities with the highest and lowest visit volumes
- Calculate a simple performance index combining volume trend and service coverage
- Flag the two or three lowest-performing units for deeper review

### Stage 3: Visualisation and Reporting

- Build a dashboard with an activity trend, regional comparison, and performance ranking
- Apply clear, consistent formatting for a non-technical audience
- Write a one-page summary of findings and a recommended next step

## Expected Deliverables

- Google Sheets workbook containing raw data, cleaning log, pivot tables, and dashboard tabs
- One-page summary highlighting key findings
- GitHub repository containing an exported workbook and completed README

## Assessment Rubric

| Criterion | What good looks like | Weight |
| --- | --- | ---: |
| Data cleaning | Missing values and inconsistencies are resolved and decisions are documented | 25% |
| Pivot table design | Tables correctly summarise activity using appropriate dimensions | 20% |
| Formula accuracy | Derived columns and the performance index calculate correctly | 15% |
| Chart clarity | Charts are readable, correctly labelled, and support the findings | 20% |
| Insight quality | Findings are specific and go beyond restating the numbers | 10% |
| Documentation | The README is complete and the repository is well organised | 10% |

## Stretch Challenge

- Add a weighted scoring formula combining multiple indicators into one facility performance score
- Build a traffic-light system that flags underperforming regions at a glance
- Explain what additional data, such as staffing or budget, would improve the analysis

## Responsible AI Guidance

You may use AI to explain concepts, debug formulas, check writing clarity, and brainstorm analytical questions. Do not use it to generate the analysis, recommendations, or report. Your interpretations and conclusions must remain your own.

If AI assistance materially influences the work, acknowledge it briefly in the project README.

## Reflection Questions

- What was the most significant data-quality issue, and how did you resolve it?
- How did you decide which indicator best represented performance?
- What story does the dashboard communicate that a table of numbers would not?
- Which three sentences would you use to brief a ministry director?
- Which dataset limitation most affected your recommendations?

## GitHub Portfolio Guidance

Organise the repository so another analyst can understand and reproduce the work:

~~~text
healthcare-facility-performance-tracker/
├── data/
│   └── raw/
├── sheets/
│   └── healthcare-facility-performance-tracker.xlsx
├── images/
│   └── dashboard-screenshot.png
└── README.md
~~~

The README should include the business challenge, tools used, dataset source, analytical approach, three key findings, limitations, and screenshots of the most important charts.

## LinkedIn Showcase Guidance

Lead with the business problem rather than the tool. Briefly explain your approach, share one concrete finding, and link to the GitHub repository so readers can inspect the work.
`,
  },
];

export function getProjectBySlug(slug: string) {
  return projects.find((project) => project.slug === slug);
}
