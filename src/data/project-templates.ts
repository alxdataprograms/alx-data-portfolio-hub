export type ProjectTemplate = {
  id: "sheets" | "mysql" | "power-bi" | "capstone" | "blank";
  label: string;
  course: string;
  courseName: string;
  markdown: string;
};

const standardBrief = (tool: string) => `## Business Challenge

Describe the organisation, the decision-maker, and the problem the learner needs to solve using ${tool}.

## Background

Give the learner enough context to understand why this problem matters.

## Project Objective

State the outcome the learner should produce in one clear paragraph.

## Learning Objectives

- Add a specific skill the learner will demonstrate
- Add a second measurable learning objective
- Add a communication or documentation objective

## Dataset Information

| Field | Details |
| --- | --- |
| Dataset name | Add the public dataset name |
| Publisher | Add the source organisation |
| File format | CSV, XLSX, SQL, or other format |
| Licence | Add the reuse terms |
| Download | [Dataset source](https://example.com) |
| Known limitations | Explain the most important limitation |

## Project Tasks

### Stage 1: Prepare

- Add the preparation and data-quality tasks

### Stage 2: Analyse

- Add the core analytical tasks

### Stage 3: Communicate

- Add the final visualisation and reporting tasks

## Expected Deliverables

- Add the main ${tool} deliverable
- Add the documentation or written summary
- Add the expected GitHub repository contents

## Assessment Rubric

| Criterion | What good looks like | Weight |
| --- | --- | ---: |
| Technical accuracy | Define the expected standard | 40% |
| Insight quality | Define the expected standard | 30% |
| Communication | Define the expected standard | 30% |

## Stretch Challenge

- Add one optional challenge for learners who want to go further

## Responsible AI Guidance

Explain where AI may help and which parts of the work must remain the learner's own.

## Reflection Questions

- What was the most important analytical decision you made?
- What would you improve with more time or better data?

## GitHub Portfolio Guidance

Describe the expected repository structure and README content.

## LinkedIn Showcase Guidance

Suggest how the learner can communicate the problem, approach, and most useful finding.
`;

export const projectTemplates: ProjectTemplate[] = [
  {
    id: "sheets",
    label: "Google Sheets",
    course: "DA-2",
    courseName: "Google Sheets",
    markdown: standardBrief("Google Sheets"),
  },
  {
    id: "mysql",
    label: "MySQL",
    course: "DA-3",
    courseName: "MySQL",
    markdown: standardBrief("MySQL"),
  },
  {
    id: "power-bi",
    label: "Power BI",
    course: "DA-4",
    courseName: "Power BI",
    markdown: standardBrief("Power BI"),
  },
  {
    id: "capstone",
    label: "Capstone",
    course: "Capstone",
    courseName: "Capstone",
    markdown: standardBrief("the learner's chosen analytics tools"),
  },
  {
    id: "blank",
    label: "Blank",
    course: "",
    courseName: "",
    markdown: "",
  },
];
