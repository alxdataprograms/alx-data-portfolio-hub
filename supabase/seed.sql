-- Generated from lawalsegun2025/alx-data-portfolio-hub at 44681928883580b42dee16573bb2029147fec342.
-- Regenerate with:
-- node scripts/import-legacy-projects.mjs /path/to/legacy-repository

insert into public.projects (
  legacy_id,
  slug,
  title,
  course,
  course_name,
  domain,
  difficulty,
  estimated_time,
  skills,
  tools,
  summary,
  dataset_url,
  content_markdown,
  status,
  sort_order,
  published_at
)
values
(
  'da2-001',
  'healthcare-facility-performance-tracker',
  'Healthcare Facility Performance Tracker',
  'DA-2',
  'Google Sheets',
  'Healthcare',
  'Beginner',
  '6–10 hours',
  array['Data Cleaning', 'Pivot Tables', 'Charts', 'Functions']::text[],
  array['Google Sheets']::text[],
  'Analyse hospital outpatient data across African health facilities to identify performance gaps and improve patient flow planning.',
  'https://www.who.int/data/gho',
  '## Business Challenge

You have been engaged as a data analyst by a regional health ministry that oversees outpatient care across a network of public health facilities in several African countries. Leadership has noticed wide variation in patient volumes and service delivery between facilities, but has no consolidated view of what''s actually happening on the ground.

Your task is to build a clean, structured performance tracker in Google Sheets that gives programme managers a clear picture of facility-level activity, and to surface the two or three facilities that most urgently need attention.

## Background

Outpatient facility data across public health systems is often scattered, inconsistently formatted, and difficult to compare facility-to-facility. Before any meaningful analysis can happen, a data analyst has to standardise the data and design a structure that non-technical stakeholders can actually read.

This project simulates the kind of first-pass analytics work a data analyst would do for a ministry of health or health-focused NGO — turning a raw facility export into something a programme director can open and understand in five minutes.

## Project Objective

Build a facility performance tracker in Google Sheets that consolidates outpatient activity data, surfaces performance gaps between facilities, and gives programme managers a clear, actionable view for resource planning.

## Learning Objectives

By completing this project you will demonstrate the ability to:

-   Clean and standardise messy real-world health facility data
-   Design pivot tables to summarise activity by facility, region, and time period
-   Build charts that make facility comparisons immediately clear to a non-technical reader
-   Use spreadsheet functions to calculate performance indicators from raw records
-   Communicate facility-level findings in a way a programme manager can act on

## Dataset Information

| Field | Details |
| --- | --- |
| Dataset Name | Global Health Observatory — Health Service Coverage Data |
| Publisher | World Health Organization (WHO) |
| Description | Facility and country-level indicators covering outpatient visits, service coverage, and health workforce data across WHO member states |
| File Format | CSV / XLSX (exportable from GHO OData API or data portal) |
| Approximate Size | ~5–15MB depending on indicator selection |
| Licence | Public — WHO open data terms (attribution required, check GHO site for latest terms) |
| Download Link | [who.int — Global Health Observatory ↗](https://www.who.int/data/gho) |
| Access | Free to access. Use the GHO OData API or download indicator tables directly from the data portal — no account required. |
| Known Limitations | GHO data is aggregated at country/regional level rather than individual facility level. Treat regions or reporting units as your ''facilities'' for the purposes of this exercise, and note this substitution clearly in your README. |
| Last Verified | July 2026 |

## Project Tasks

### Stage 1 — Data Cleaning & Preparation

-   Import the raw indicator export and audit for missing values, inconsistent region names, and duplicate rows
-   Standardise date periods, region/facility naming, and indicator units
-   Document every cleaning decision in a separate log tab
-   Calculate derived columns: period-over-period change, per-capita visit rate where population data is available

### Stage 2 — Analysis

-   Build pivot tables summarising outpatient activity by region and time period
-   Identify the regions/facilities with the highest and lowest visit volumes
-   Calculate a simple performance index combining volume trend and service coverage
-   Flag the two or three lowest-performing units for deeper review

### Stage 3 — Visualisation & Reporting

-   Build a dashboard tab with summary charts: activity trend over time, regional comparison bar chart, and a performance index ranking
-   Apply clear, consistent formatting so a non-technical reader can interpret it without explanation
-   Write a one-page summary of findings and a recommended next step for the ministry

## Expected Deliverables

-   Google Sheets workbook: raw data tab, cleaning log tab, pivot tables, and dashboard tab
-   Summary write-up (in-sheet or separate doc, 1 page) highlighting key findings
-   GitHub repository with an exported copy of the workbook and a completed README

## Assessment Rubric

| Criterion | What Good Looks Like | Weight |
| --- | --- | --- |
| Data Cleaning | Missing values and inconsistencies identified and resolved; decisions documented | 25% |
| Pivot Table Design | Tables correctly summarise activity by the right dimensions | 20% |
| Formula Accuracy | Derived columns and performance index calculate correctly | 15% |
| Chart Clarity | Charts are readable, correctly labelled, and support the findings | 20% |
| Insight Quality | Findings are specific and go beyond restating the numbers | 10% |
| Documentation | README is complete and repository is well-organised | 10% |

## Stretch Challenge

**For learners who want to go further:**

-   Add a weighted scoring formula that combines multiple indicators into a single facility performance score
-   Build a simple traffic-light conditional formatting system to flag underperforming regions at a glance
-   Write a short reflection on what additional data (e.g. staffing levels, budget) would improve the analysis

## Responsible AI Guidance

**You may use AI to:** explain concepts, debug formulas, check your writing clarity, and brainstorm analytical questions.

**You may not use AI to:** generate the analysis, write your recommendations, or produce your report for you. Your interpretations and conclusions must be your own.

If you use AI assistance significantly at any stage, note it briefly in your README. Employers value honesty about tooling — what matters is that the thinking and judgement are yours.

## Reflection Questions

Include written answers to at least three of these in your README or a separate reflection document:

-   What was the most significant data quality issue you encountered, and how did you resolve it?
-   How did you decide which indicator best represented ''performance''?
-   What story does your dashboard tell that a table of numbers would not?
-   If you were presenting this to a ministry director, what three sentences would you lead with?
-   What limitations of this dataset most affected the quality of your recommendations?

## GitHub Portfolio Guidance

Organise your repository as follows:

~~~text
healthcare-facility-performance-tracker/ ├── data/ │ └── raw/ ← link to source, not the file itself ├── sheets/ │ └── healthcare-facility-performance-tracker.xlsx ← exported copy of your Google Sheet ├── images/ │ └── chart_screenshots.png └── README.md
~~~

Your README should include: project title, business challenge, tools used, dataset source and link, key findings (3 bullet points), and screenshots of your key charts.

Full GitHub Guide →

## LinkedIn Showcase Guidance

When sharing this project on LinkedIn, use this structure:

-   **Hook:** Start with the business problem, not the tools ("A health ministry had no consolidated view of facility performance across its network…")
-   **What you did:** Briefly describe your analytical approach in Google Sheets
-   **Key finding:** Share one specific, concrete insight from the data
-   **Link:** Include your GitHub repository link
-   **Tags:** #DataAnalytics #GoogleSheets #ALXAfrica #HealthcareAnalytics #PortfolioProject

Full LinkedIn Guide →',
  'published',
  0,
  now()
),
(
  'da2-002',
  'crop-yield-and-food-security-analysis',
  'Crop Yield & Food Security Analysis',
  'DA-2',
  'Google Sheets',
  'Agriculture & Food Systems',
  'Beginner',
  '6–10 hours',
  array['Data Cleaning', 'Descriptive Analysis', 'Charts', 'Pivot Tables']::text[],
  array['Google Sheets']::text[],
  'Use FAO crop production records to assess food security trends across Sub-Saharan Africa and surface regions at highest risk.',
  'https://www.fao.org/faostat/en/',
  '## Business Challenge

You have been brought in as a data analyst by a regional food security monitoring unit that tracks agricultural production trends across Sub-Saharan Africa. Leadership needs to understand which countries and crops show declining yields, so limited intervention funding can be directed where it''s needed most.

Your task is to analyse crop production and yield records, identify the countries and crops at highest food security risk, and present findings the unit can use to prioritise its next funding cycle.

## Background

Food security monitoring depends on being able to spot yield decline early — before it becomes a crisis. Crop production data is publicly available at scale, but turning it into a prioritised risk picture requires careful cleaning and thoughtful analysis.

This project simulates the early-stage analytical work a data analyst would do for a food security NGO or agricultural ministry: taking a broad, multi-country dataset and narrowing it down to a short list of areas needing attention.

## Project Objective

Analyse FAO crop production data to assess food security trends across Sub-Saharan Africa, and identify the countries and crops showing the highest risk of yield decline.

## Learning Objectives

By completing this project you will demonstrate the ability to:

-   Clean and structure multi-country, multi-year agricultural production data
-   Use descriptive analysis to identify meaningful trends in noisy time-series data
-   Build charts that communicate trend direction and risk level clearly
-   Design pivot tables to compare yield performance across countries and crop types
-   Translate agricultural data into a food-security risk narrative for a non-technical audience

## Dataset Information

| Field | Details |
| --- | --- |
| Dataset Name | FAOSTAT — Crops and Livestock Products |
| Publisher | Food and Agriculture Organization of the United Nations (FAO) |
| Description | Country-level annual production, area harvested, and yield data across major crop types, covering multiple decades |
| File Format | CSV (bulk download) or filtered export via FAOSTAT query tool |
| Approximate Size | ~10–30MB depending on country/crop selection |
| Licence | Public — CC BY 4.0 |
| Download Link | [fao.org — FAOSTAT ↗](https://www.fao.org/faostat/en/) |
| Access | Free, no account required. Use the FAOSTAT query tool to filter by region (Sub-Saharan Africa), crop type, and year range, then export as CSV. |
| Known Limitations | Some countries have incomplete reporting for certain years — treat gaps as missing data, not zero production, and document how you handled them. |
| Last Verified | July 2026 |

## Project Tasks

### Stage 1 — Data Cleaning & Preparation

-   Import the raw FAOSTAT export and filter to Sub-Saharan African countries and a representative set of staple crops
-   Audit for missing years, inconsistent units, and outlier values
-   Standardise country names and crop categories
-   Calculate derived columns: year-over-year yield change, multi-year moving average

### Stage 2 — Analysis

-   Build pivot tables comparing yield trends by country and crop over the available time range
-   Identify countries/crops with a sustained downward yield trend (not just a single bad year)
-   Rank countries by a simple food security risk indicator combining yield trend and production volume

### Stage 3 — Visualisation & Reporting

-   Build a dashboard tab with trend line charts by country and crop, and a ranked risk table
-   Use conditional formatting to highlight the highest-risk countries at a glance
-   Write a short summary identifying the top 3 priority countries and the reasoning behind the ranking

## Expected Deliverables

-   Google Sheets workbook: raw data tab, cleaning log tab, pivot tables, and dashboard tab
-   Ranked risk summary with supporting rationale (1 page)
-   GitHub repository with an exported copy of the workbook and a completed README

## Assessment Rubric

| Criterion | What Good Looks Like | Weight |
| --- | --- | --- |
| Data Cleaning | Missing years and inconsistencies handled appropriately and documented | 20% |
| Trend Analysis | Correctly distinguishes genuine multi-year trends from single-year noise | 25% |
| Pivot Table Design | Tables correctly compare countries and crops on the right dimensions | 15% |
| Chart Clarity | Charts clearly communicate trend direction and risk level | 20% |
| Risk Ranking Logic | Ranking methodology is sound and clearly explained | 10% |
| Documentation | README is complete and repository is well-organised | 10% |

## Stretch Challenge

**For learners who want to go further:**

-   Layer in population or import-dependency data to weight the risk ranking by how many people are affected
-   Build a small forecast using a simple trendline projection for the highest-risk country''s top crop
-   Write a reflection on how climate data (rainfall, temperature) might explain the trends you found

## Responsible AI Guidance

**You may use AI to:** explain concepts, debug formulas, check your writing clarity, and brainstorm analytical questions.

**You may not use AI to:** generate the analysis, write your recommendations, or produce your report for you. Your interpretations and conclusions must be your own.

If you use AI assistance significantly at any stage, note it briefly in your README. Employers value honesty about tooling — what matters is that the thinking and judgement are yours.

## Reflection Questions

Include written answers to at least three of these in your README or a separate reflection document:

-   How did you distinguish a genuine yield decline from normal year-to-year variation?
-   What was the hardest data cleaning decision you had to make, and why?
-   Which country''s finding most surprised you, and why?
-   If you were presenting this to a funding committee, what would you lead with?
-   What additional data would most improve the accuracy of your risk ranking?

## GitHub Portfolio Guidance

Organise your repository as follows:

~~~text
crop-yield-food-security-analysis/ ├── data/ │ └── raw/ ← link to source, not the file itself ├── sheets/ │ └── crop-yield-food-security-analysis.xlsx ← exported copy of your Google Sheet ├── images/ │ └── chart_screenshots.png └── README.md
~~~

Your README should include: project title, business challenge, tools used, dataset source and link, key findings (3 bullet points), and screenshots of your key charts.

Full GitHub Guide →

## LinkedIn Showcase Guidance

When sharing this project on LinkedIn, use this structure:

-   **Hook:** Start with the business problem, not the tools ("A food security unit needed to know exactly where declining yields put the most people at risk…")
-   **What you did:** Briefly describe your analytical approach in Google Sheets
-   **Key finding:** Share one specific, concrete insight from the data
-   **Link:** Include your GitHub repository link
-   **Tags:** #DataAnalytics #GoogleSheets #ALXAfrica #FoodSecurity #PortfolioProject

Full LinkedIn Guide →',
  'published',
  1,
  now()
),
(
  'da2-003',
  'mobile-money-adoption-trends',
  'Mobile Money Adoption Trends',
  'DA-2',
  'Google Sheets',
  'Banking & Finance',
  'Intermediate',
  '8–12 hours',
  array['Data Cleaning', 'Validation', 'Functions', 'Statistical Reasoning']::text[],
  array['Google Sheets']::text[],
  'Examine mobile money growth data across African markets to identify adoption patterns and recommend strategies for financial inclusion.',
  'https://globalfindex.worldbank.org/',
  '## Business Challenge

You have been engaged as a data analyst by a pan-African financial inclusion advocacy group. The group wants to understand where mobile money adoption is accelerating, where it''s stalling, and what that means for its next round of financial inclusion programming.

Your task is to analyse mobile money and account ownership data across African markets, identify adoption patterns, and recommend where the group should focus its outreach efforts.

## Background

Mobile money has reshaped financial inclusion across Africa over the past decade, but adoption is far from uniform — some markets have leapfrogged traditional banking almost entirely, while others lag behind. Spotting these patterns requires careful handling of survey-based data, which comes with its own quirks: different sample sizes, survey years, and definitions across countries.

This project simulates the kind of market analysis a data analyst would produce for a fintech company or a financial inclusion NGO deciding where to expand next.

## Project Objective

Examine mobile money growth data across African markets to identify adoption patterns and recommend where a financial inclusion programme should focus next.

## Learning Objectives

By completing this project you will demonstrate the ability to:

-   Clean and validate survey-based financial inclusion data across multiple countries and years
-   Apply data validation rules to catch inconsistent or implausible entries
-   Use spreadsheet functions to calculate adoption rates and growth metrics
-   Apply basic statistical reasoning to distinguish genuine trends from sampling noise
-   Translate cross-country financial data into a clear set of programming recommendations

## Dataset Information

| Field | Details |
| --- | --- |
| Dataset Name | Global Findex Database — Mobile Money Indicators |
| Publisher | World Bank |
| Description | Survey-based indicators on account ownership, mobile money usage, and financial behaviour, covering multiple survey waves across African countries |
| File Format | CSV / XLSX (downloadable from the Global Findex data portal) |
| Approximate Size | ~5–10MB for the Africa subset |
| Licence | Public — World Bank Open Data terms |
| Download Link | [globalfindex.worldbank.org ↗](https://globalfindex.worldbank.org/) |
| Access | Free, no account required. Download the full dataset or use the online data explorer to filter to African countries and export as CSV. |
| Known Limitations | Findex data is survey-based with several years between waves, so it shows snapshots rather than continuous trends — be explicit in your analysis about which years you''re comparing. |
| Last Verified | July 2026 |

## Project Tasks

### Stage 1 — Data Cleaning & Preparation

-   Import the raw Findex export and filter to African countries and mobile-money-relevant indicators
-   Apply data validation to catch implausible values (e.g. percentages outside 0–100%)
-   Standardise country names and survey year labels
-   Calculate derived columns: adoption rate change between survey waves

### Stage 2 — Analysis

-   Segment countries into adoption tiers (high, moderate, low/emerging) based on latest available data
-   Compare growth between survey waves to identify accelerating vs. stalling markets
-   Cross-reference adoption rates with account ownership to spot markets where mobile money is substituting for, not adding to, formal banking

### Stage 3 — Visualisation & Reporting

-   Build a dashboard tab with an adoption tier map/table and a growth comparison chart
-   Highlight the 3–5 markets showing the strongest growth signal for expansion
-   Write a short set of recommendations for where the advocacy group should focus outreach

## Expected Deliverables

-   Google Sheets workbook: raw data tab, validation/cleaning log tab, analysis tabs, and dashboard tab
-   Recommendations summary (1 page) naming priority markets and the reasoning behind them
-   GitHub repository with an exported copy of the workbook and a completed README

## Assessment Rubric

| Criterion | What Good Looks Like | Weight |
| --- | --- | --- |
| Data Validation | Implausible or inconsistent entries correctly identified and handled | 20% |
| Adoption Tier Logic | Segmentation methodology is sound and consistently applied | 20% |
| Growth Analysis | Correctly compares survey waves and accounts for gaps between them | 20% |
| Chart Clarity | Dashboard clearly communicates tier and growth patterns | 15% |
| Recommendation Quality | Recommendations are specific, grounded in the data, and actionable | 15% |
| Documentation | README is complete and repository is well-organised | 10% |

## Stretch Challenge

**For learners who want to go further:**

-   Cross-reference adoption data with internet/mobile penetration data to test whether infrastructure explains the pattern
-   Build a simple scoring model ranking markets by ''expansion opportunity'' using multiple weighted indicators
-   Write a reflection on how survey timing gaps could bias your growth comparisons

## Responsible AI Guidance

**You may use AI to:** explain concepts, debug formulas, check your writing clarity, and brainstorm analytical questions.

**You may not use AI to:** generate the analysis, write your recommendations, or produce your report for you. Your interpretations and conclusions must be your own.

If you use AI assistance significantly at any stage, note it briefly in your README. Employers value honesty about tooling — what matters is that the thinking and judgement are yours.

## Reflection Questions

Include written answers to at least three of these in your README or a separate reflection document:

-   How did you handle the gap in years between Findex survey waves?
-   What made a country ''high adoption'' in your tiering — and would you define it differently now?
-   Which market''s pattern most surprised you, and why?
-   If you were presenting this to the advocacy group''s board, what would you lead with?
-   What additional data would most strengthen your market recommendations?

## GitHub Portfolio Guidance

Organise your repository as follows:

~~~text
mobile-money-adoption-trends/ ├── data/ │ └── raw/ ← link to source, not the file itself ├── sheets/ │ └── mobile-money-adoption-trends.xlsx ← exported copy of your Google Sheet ├── images/ │ └── chart_screenshots.png └── README.md
~~~

Your README should include: project title, business challenge, tools used, dataset source and link, key findings (3 bullet points), and screenshots of your key charts.

Full GitHub Guide →

## LinkedIn Showcase Guidance

When sharing this project on LinkedIn, use this structure:

-   **Hook:** Start with the business problem, not the tools ("A financial inclusion group needed to know exactly where mobile money adoption was accelerating — and where it had stalled…")
-   **What you did:** Briefly describe your analytical approach in Google Sheets
-   **Key finding:** Share one specific, concrete insight from the data
-   **Link:** Include your GitHub repository link
-   **Tags:** #DataAnalytics #GoogleSheets #ALXAfrica #FinancialInclusion #PortfolioProject

Full LinkedIn Guide →',
  'published',
  2,
  now()
),
(
  'da2-004',
  'school-enrollment-and-gender-gap-analysis',
  'School Enrollment & Gender Gap Analysis',
  'DA-2',
  'Google Sheets',
  'Education',
  'Beginner',
  '6–8 hours',
  array['Data Cleaning', 'Pivot Tables', 'Charts', 'Functions']::text[],
  array['Google Sheets']::text[],
  'Analyse UNESCO education enrollment data to understand gender disparities and learning access gaps across African countries.',
  'http://uis.unesco.org/',
  '## Business Challenge

You have been engaged as a data analyst by an education-focused NGO working to close gender gaps in school enrollment across Africa. Leadership needs a clear, country-by-country picture of where the gender gap is widest and how it has changed over time, to prioritise where new programming should launch.

Your task is to analyse UNESCO enrollment data, calculate gender parity indicators by country, and identify where the NGO''s next intervention would have the greatest impact.

## Background

Gender gaps in education access vary significantly across countries and education levels — primary, secondary, and tertiary. A country that has closed the gap at primary level may still have a wide gap at secondary level. Spotting these differences requires structured, level-by-level comparison, not just a single national average.

This project simulates the kind of baseline analysis a data analyst would produce for an education NGO scoping a new country programme.

## Project Objective

Analyse UNESCO education enrollment data to understand gender disparities and learning access gaps across African countries, and identify where a new intervention would have the greatest impact.

## Learning Objectives

By completing this project you will demonstrate the ability to:

-   Clean and structure multi-level, multi-country enrollment data
-   Design pivot tables to compare enrollment by gender, country, and education level
-   Calculate a gender parity index from raw enrollment figures
-   Build charts that clearly communicate gap size and direction of change
-   Translate enrollment data into a prioritised set of programme recommendations

## Dataset Information

| Field | Details |
| --- | --- |
| Dataset Name | UIS Education Statistics — Enrollment by Sex and Level |
| Publisher | UNESCO Institute for Statistics (UIS) |
| Description | Country-level enrollment figures broken down by sex and education level (primary, secondary, tertiary), covering multiple years |
| File Format | CSV / XLSX (downloadable via the UIS data browser) |
| Approximate Size | ~5–15MB depending on country/level selection |
| Licence | Public — UNESCO open data terms |
| Download Link | [uis.unesco.org ↗](http://uis.unesco.org/) |
| Access | Free, no account required. Use the UIS data browser to filter to African countries and enrollment-by-sex indicators, then export as CSV. |
| Known Limitations | Reporting completeness varies significantly by country and year — some countries have large gaps in their time series. Be explicit about which years you''re comparing for each country. |
| Last Verified | July 2026 |

## Project Tasks

### Stage 1 — Data Cleaning & Preparation

-   Import the raw UIS export and filter to African countries and relevant enrollment indicators
-   Audit for missing years and inconsistent country naming
-   Standardise education level categories (primary, secondary, tertiary)
-   Calculate the gender parity index (female enrollment ÷ male enrollment) for each country, level, and year

### Stage 2 — Analysis

-   Build pivot tables comparing parity index by country and education level
-   Identify countries where the gap widens significantly between primary and secondary level
-   Rank countries by the size and direction of change in their gender gap over the available years

### Stage 3 — Visualisation & Reporting

-   Build a dashboard tab with a parity index comparison chart and a country ranking table
-   Use conditional formatting to flag countries with a widening (not narrowing) gap
-   Write a short summary naming the top 3 countries where intervention would have the greatest impact

## Expected Deliverables

-   Google Sheets workbook: raw data tab, cleaning log tab, pivot tables, and dashboard tab
-   Prioritised country summary (1 page) with supporting rationale
-   GitHub repository with an exported copy of the workbook and a completed README

## Assessment Rubric

| Criterion | What Good Looks Like | Weight |
| --- | --- | --- |
| Data Cleaning | Missing years and inconsistencies handled appropriately and documented | 20% |
| Parity Index Calculation | Formula is correct and consistently applied across countries/levels | 25% |
| Pivot Table Design | Tables correctly compare the right dimensions | 15% |
| Chart Clarity | Charts clearly communicate gap size and trend direction | 20% |
| Recommendation Quality | Country prioritisation is well-reasoned and grounded in the data | 10% |
| Documentation | README is complete and repository is well-organised | 10% |

## Stretch Challenge

**For learners who want to go further:**

-   Break the analysis down further by urban/rural or regional data where available
-   Cross-reference the gender gap with a second indicator (e.g. GDP per capita) to test for correlation
-   Write a reflection on what non-enrollment data (e.g. dropout reasons) would deepen the analysis

## Responsible AI Guidance

**You may use AI to:** explain concepts, debug formulas, check your writing clarity, and brainstorm analytical questions.

**You may not use AI to:** generate the analysis, write your recommendations, or produce your report for you. Your interpretations and conclusions must be your own.

If you use AI assistance significantly at any stage, note it briefly in your README. Employers value honesty about tooling — what matters is that the thinking and judgement are yours.

## Reflection Questions

Include written answers to at least three of these in your README or a separate reflection document:

-   What was the most significant data quality issue you encountered, and how did you resolve it?
-   Which country''s pattern most surprised you, and why?
-   How did the gap change between primary and secondary level, and what might explain that?
-   If you were presenting this to the NGO''s programme team, what three sentences would you lead with?
-   What additional data would most improve the quality of your recommendations?

## GitHub Portfolio Guidance

Organise your repository as follows:

~~~text
school-enrollment-gender-gap-analysis/ ├── data/ │ └── raw/ ← link to source, not the file itself ├── sheets/ │ └── school-enrollment-gender-gap-analysis.xlsx ← exported copy of your Google Sheet ├── images/ │ └── chart_screenshots.png └── README.md
~~~

Your README should include: project title, business challenge, tools used, dataset source and link, key findings (3 bullet points), and screenshots of your key charts.

Full GitHub Guide →

## LinkedIn Showcase Guidance

When sharing this project on LinkedIn, use this structure:

-   **Hook:** Start with the business problem, not the tools ("An education NGO needed to know exactly where the gender gap in schooling was widest — and where it was actually widening…")
-   **What you did:** Briefly describe your analytical approach in Google Sheets
-   **Key finding:** Share one specific, concrete insight from the data
-   **Link:** Include your GitHub repository link
-   **Tags:** #DataAnalytics #GoogleSheets #ALXAfrica #EducationEquity #PortfolioProject

Full LinkedIn Guide →',
  'published',
  3,
  now()
),
(
  'da2-005',
  'air-quality-and-health-impact-report',
  'Air Quality & Health Impact Report',
  'DA-2',
  'Google Sheets',
  'Climate & Sustainability',
  'Intermediate',
  '8–12 hours',
  array['Data Cleaning', 'Descriptive Statistics', 'Charts', 'Hypothesis Testing']::text[],
  array['Google Sheets']::text[],
  'Process WHO air quality monitoring data to assess pollution levels in African cities and evaluate public health implications.',
  'https://www.who.int/data/gho/data/themes/air-pollution',
  '## Business Challenge

You have been engaged as a data analyst by a public health research unit studying the health impact of urban air pollution across African cities. Leadership needs an evidence-based report identifying which cities have the most severe air quality problems, to support an upcoming policy brief.

Your task is to process WHO air quality monitoring data, assess pollution severity across cities, and evaluate the likely public health implications.

## Background

Urban air pollution is a growing public health concern across African cities, but monitoring data quality and coverage varies widely — some cities have dense monitoring networks, others rely on a single station. A rigorous analyst has to account for this before drawing conclusions about relative severity.

This project simulates the kind of evidence-gathering work a data analyst would do for a public health research team preparing a policy brief for government or donor audiences.

## Project Objective

Process WHO air quality monitoring data to assess pollution severity across African cities and evaluate the public health implications for a policy audience.

## Learning Objectives

By completing this project you will demonstrate the ability to:

-   Clean and structure environmental monitoring data with inconsistent coverage
-   Apply descriptive statistics to summarise pollutant concentration levels
-   Compare city-level readings against WHO air quality guideline thresholds
-   Apply basic hypothesis testing reasoning to assess whether observed differences are meaningful
-   Communicate technical air quality findings to a policy, not technical, audience

## Dataset Information

| Field | Details |
| --- | --- |
| Dataset Name | WHO Ambient Air Quality Database |
| Publisher | World Health Organization (WHO) |
| Description | City-level annual mean concentrations of key air pollutants (PM2.5, PM10, NO2) from ground monitoring stations worldwide |
| File Format | CSV / XLSX (downloadable from the WHO data portal) |
| Approximate Size | ~10–20MB for the full database, smaller once filtered to African cities |
| Licence | Public — WHO open data terms |
| Download Link | [who.int — Ambient Air Quality ↗](https://www.who.int/data/gho/data/themes/air-pollution) |
| Access | Free, no account required. Download the full database and filter to African cities using the region/country columns. |
| Known Limitations | Monitoring station density varies enormously by city — some readings represent a single station, others an average of many. Note this in your analysis rather than treating all readings as equally representative. |
| Last Verified | July 2026 |

## Project Tasks

### Stage 1 — Data Cleaning & Preparation

-   Import the raw WHO export and filter to African cities with available PM2.5/PM10 readings
-   Audit for missing years and flag cities with very limited monitoring station coverage
-   Standardise city and country naming
-   Calculate derived columns: multiple-of-WHO-guideline ratio for each pollutant reading

### Stage 2 — Analysis

-   Use descriptive statistics (mean, median, range) to summarise pollution levels by city and region
-   Rank cities by severity relative to WHO guideline thresholds
-   Assess whether differences between the most and least polluted cities are large enough to be meaningful, not just noise from limited monitoring

### Stage 3 — Visualisation & Reporting

-   Build a dashboard tab with a city ranking chart and a guideline-threshold comparison visual
-   Highlight the cities with the most severe and most consistently under-monitored pollution levels
-   Write a short public-health-oriented summary suitable for inclusion in a policy brief

## Expected Deliverables

-   Google Sheets workbook: raw data tab, cleaning log tab, analysis tabs, and dashboard tab
-   Policy-ready summary (1 page) written for a non-technical audience
-   GitHub repository with an exported copy of the workbook and a completed README

## Assessment Rubric

| Criterion | What Good Looks Like | Weight |
| --- | --- | --- |
| Data Cleaning | Missing data and monitoring coverage limitations correctly identified and documented | 20% |
| Statistical Summary | Descriptive statistics are correctly calculated and appropriately interpreted | 20% |
| Guideline Comparison | City rankings against WHO thresholds are accurate | 20% |
| Chart Clarity | Dashboard clearly communicates severity and monitoring limitations | 20% |
| Policy Communication | Summary is accurate, appropriately cautious, and accessible to a non-technical reader | 10% |
| Documentation | README is complete and repository is well-organised | 10% |

## Stretch Challenge

**For learners who want to go further:**

-   Cross-reference pollution severity with population density data to estimate relative exposure burden
-   Build a simple year-over-year trend chart for the 3 most polluted cities with sufficient historical data
-   Write a reflection on how monitoring station sparsity could bias city rankings

## Responsible AI Guidance

**You may use AI to:** explain concepts, debug formulas, check your writing clarity, and brainstorm analytical questions.

**You may not use AI to:** generate the analysis, write your recommendations, or produce your report for you. Your interpretations and conclusions must be your own.

If you use AI assistance significantly at any stage, note it briefly in your README. Employers value honesty about tooling — what matters is that the thinking and judgement are yours.

## Reflection Questions

Include written answers to at least three of these in your README or a separate reflection document:

-   How did you account for differences in monitoring station density between cities?
-   Which city''s result most surprised you, and why?
-   What is the difference between ''more polluted'' and ''more monitored'', and how did you distinguish them in your analysis?
-   If you were briefing a health minister, what three sentences would you lead with?
-   What additional data would most strengthen the public health case in this report?

## GitHub Portfolio Guidance

Organise your repository as follows:

~~~text
air-quality-health-impact-report/ ├── data/ │ └── raw/ ← link to source, not the file itself ├── sheets/ │ └── air-quality-health-impact-report.xlsx ← exported copy of your Google Sheet ├── images/ │ └── chart_screenshots.png └── README.md
~~~

Your README should include: project title, business challenge, tools used, dataset source and link, key findings (3 bullet points), and screenshots of your key charts.

Full GitHub Guide →

## LinkedIn Showcase Guidance

When sharing this project on LinkedIn, use this structure:

-   **Hook:** Start with the business problem, not the tools ("A public health team needed evidence on exactly which African cities faced the most severe air quality problems…")
-   **What you did:** Briefly describe your analytical approach in Google Sheets
-   **Key finding:** Share one specific, concrete insight from the data
-   **Link:** Include your GitHub repository link
-   **Tags:** #DataAnalytics #GoogleSheets #ALXAfrica #PublicHealth #PortfolioProject

Full LinkedIn Guide →',
  'published',
  4,
  now()
),
(
  'da2-006',
  'e-commerce-returns-and-customer-behaviour',
  'E-commerce Returns & Customer Behaviour',
  'DA-2',
  'Google Sheets',
  'Retail & E-commerce',
  'Intermediate',
  '8–12 hours',
  array['Data Cleaning', 'Functions', 'Pivot Tables', 'Charts']::text[],
  array['Google Sheets']::text[],
  'Clean and analyse a retail transaction dataset to uncover return patterns, identify problem product categories, and make inventory recommendations.',
  'https://www.kaggle.com/datasets/carrie1/ecommerce-data',
  '## Business Challenge

You have been engaged as a data analyst by an online retailer whose returns rate has been climbing quarter over quarter, eating into margins. Leadership doesn''t have a clear picture of which product categories or customer segments are driving the increase.

Your task is to clean and analyse the retailer''s transaction data to uncover return patterns, identify the specific product categories driving the problem, and make inventory and policy recommendations.

## Background

Returns are one of the costliest and most under-analysed parts of e-commerce operations. Raw transaction exports are usually messy — inconsistent product naming, duplicate order records, and missing return reason codes are all common. Cleaning this properly is most of the work before any pattern can be trusted.

This project simulates the kind of operational analysis a data analyst would do for a retail or e-commerce company trying to control returns-driven margin loss.

## Project Objective

Clean and analyse a retail transaction dataset to uncover return patterns, identify the product categories and customer segments driving returns, and make evidence-based inventory recommendations.

## Learning Objectives

By completing this project you will demonstrate the ability to:

-   Clean a messy real-world transaction dataset with inconsistent product and order data
-   Use spreadsheet functions to calculate return rates by category, product, and time period
-   Design pivot tables to segment return behaviour by customer and product dimensions
-   Build charts that isolate the specific drivers of a business problem
-   Translate transaction-level patterns into inventory and policy recommendations

## Dataset Information

| Field | Details |
| --- | --- |
| Dataset Name | Online Retail Transaction Dataset |
| Publisher | Kaggle (UCI Machine Learning Repository source) |
| Description | Transaction-level records for a UK-based online retailer, including invoice numbers, product descriptions, quantities (negative values indicating returns), prices, and customer IDs |
| File Format | CSV / XLSX |
| Approximate Size | ~45MB |
| Licence | Public — check Kaggle dataset page for current licence terms |
| Download Link | [kaggle.com — E-commerce Data ↗](https://www.kaggle.com/datasets/carrie1/ecommerce-data) |
| Access | Free Kaggle account required. Click ''Download'' on the dataset page. |
| Known Limitations | The dataset represents a single retailer over roughly one year — treat findings as illustrative of methodology rather than universally generalisable, and say so in your report. |
| Last Verified | July 2026 |

## Project Tasks

### Stage 1 — Data Cleaning & Preparation

-   Import the raw transaction export and identify returns (negative quantity rows) vs. standard sales rows
-   Audit for missing customer IDs, duplicate invoices, and inconsistent product descriptions
-   Standardise product category groupings (the raw data has free-text descriptions, not categories)
-   Calculate derived columns: return rate by product, order value, and return-to-sale time gap where determinable

### Stage 2 — Analysis

-   Build pivot tables comparing return rate by product category and by customer segment
-   Identify the specific categories with return rates well above the overall average
-   Segment customers into low/high-return groups and compare their purchasing patterns

### Stage 3 — Visualisation & Reporting

-   Build a dashboard tab with a category return-rate ranking chart and a customer segment comparison
-   Highlight the 2–3 categories responsible for the largest share of total returns value
-   Write inventory and policy recommendations addressing the specific drivers you identified

## Expected Deliverables

-   Google Sheets workbook: raw data tab, cleaning log tab, pivot tables, and dashboard tab
-   Recommendations summary (1 page) naming priority categories and proposed actions
-   GitHub repository with an exported copy of the workbook and a completed README

## Assessment Rubric

| Criterion | What Good Looks Like | Weight |
| --- | --- | --- |
| Data Cleaning | Product categorisation and return identification are accurate and documented | 25% |
| Return Rate Calculation | Formulas correctly calculate rate by category, segment, and time | 20% |
| Pivot Table Design | Tables correctly isolate the true drivers, not just top-line volume | 15% |
| Chart Clarity | Dashboard clearly shows which categories/segments matter most | 20% |
| Recommendation Quality | Recommendations are specific, grounded in the data, and actionable | 10% |
| Documentation | README is complete and repository is well-organised | 10% |

## Stretch Challenge

**For learners who want to go further:**

-   Estimate the total margin impact of returns in the top offending category using average product price data
-   Build a simple customer lifetime value view to see whether high-return customers are also high-value customers
-   Write a reflection on what additional data (return reason codes, product ratings) would sharpen the analysis

## Responsible AI Guidance

**You may use AI to:** explain concepts, debug formulas, check your writing clarity, and brainstorm analytical questions.

**You may not use AI to:** generate the analysis, write your recommendations, or produce your report for you. Your interpretations and conclusions must be your own.

If you use AI assistance significantly at any stage, note it briefly in your README. Employers value honesty about tooling — what matters is that the thinking and judgement are yours.

## Reflection Questions

Include written answers to at least three of these in your README or a separate reflection document:

-   How did you decide on your product category groupings, given the raw data only had free-text descriptions?
-   What was the most significant data quality issue you encountered, and how did you resolve it?
-   Which finding most surprised you, and why?
-   If you were presenting this to the retailer''s operations team, what three sentences would you lead with?
-   What additional data would most improve the precision of your recommendations?

## GitHub Portfolio Guidance

Organise your repository as follows:

~~~text
ecommerce-returns-customer-behaviour/ ├── data/ │ └── raw/ ← link to source, not the file itself ├── sheets/ │ └── ecommerce-returns-customer-behaviour.xlsx ← exported copy of your Google Sheet ├── images/ │ └── chart_screenshots.png └── README.md
~~~

Your README should include: project title, business challenge, tools used, dataset source and link, key findings (3 bullet points), and screenshots of your key charts.

Full GitHub Guide →

## LinkedIn Showcase Guidance

When sharing this project on LinkedIn, use this structure:

-   **Hook:** Start with the business problem, not the tools ("An online retailer''s returns rate kept climbing — and nobody could say exactly why…")
-   **What you did:** Briefly describe your analytical approach in Google Sheets
-   **Key finding:** Share one specific, concrete insight from the data
-   **Link:** Include your GitHub repository link
-   **Tags:** #DataAnalytics #GoogleSheets #ALXAfrica #Ecommerce #PortfolioProject

Full LinkedIn Guide →',
  'published',
  5,
  now()
),
(
  'da2-007',
  'electricity-access-and-energy-poverty',
  'Electricity Access & Energy Poverty',
  'DA-2',
  'Google Sheets',
  'Energy',
  'Beginner',
  '6–8 hours',
  array['Data Cleaning', 'Functions', 'Charts', 'Descriptive Analysis']::text[],
  array['Google Sheets']::text[],
  'Use World Bank energy access data to map electricity coverage gaps across Africa and calculate populations living without reliable power.',
  'https://data.worldbank.org/indicator/EG.ELC.ACCS.ZS',
  '## Business Challenge

You have been engaged as a data analyst by an energy access non-profit planning where to deploy off-grid solar programmes across Africa. Leadership needs to know precisely where electricity coverage gaps are largest — and how many people that actually represents — to prioritise the next deployment.

Your task is to use World Bank electricity access data to map coverage gaps across African countries and calculate the population living without reliable power.

## Background

Electricity access statistics are reported as percentages, which can obscure the real scale of the problem — a country with 60% coverage and a large population may have far more people without power than a country with 30% coverage and a small population. Turning coverage rates into absolute population figures is an essential step analysts often skip.

This project simulates the kind of prioritisation analysis a data analyst would do for an energy access NGO deciding where limited deployment resources should go first.

## Project Objective

Use World Bank energy access data to map electricity coverage gaps across Africa and calculate the populations living without reliable power, to inform programme prioritisation.

## Learning Objectives

By completing this project you will demonstrate the ability to:

-   Clean and structure country-level electricity access data
-   Use spreadsheet functions to convert coverage percentages into absolute population figures
-   Build charts that communicate both rate and scale of the access gap
-   Apply descriptive analysis to rank countries by the true size of the problem, not just the percentage
-   Translate energy statistics into a clear programme prioritisation recommendation

## Dataset Information

| Field | Details |
| --- | --- |
| Dataset Name | Sustainable Energy for All — Access to Electricity |
| Publisher | World Bank |
| Description | Country-level percentage of population with access to electricity, alongside total population figures, across multiple years |
| File Format | CSV / XLSX (downloadable from the World Bank Data portal) |
| Approximate Size | ~2–5MB |
| Licence | Public — CC BY 4.0 (World Bank Open Data) |
| Download Link | [data.worldbank.org — Access to Electricity ↗](https://data.worldbank.org/indicator/EG.ELC.ACCS.ZS) |
| Access | Free, no account required. Download the indicator as CSV directly from the World Bank Data portal, along with the corresponding total population indicator. |
| Known Limitations | Some countries have gaps in reporting for certain years, and access percentages don''t distinguish grid vs. off-grid or reliability of supply — note this distinction in your analysis. |
| Last Verified | July 2026 |

## Project Tasks

### Stage 1 — Data Cleaning & Preparation

-   Import electricity access and population indicators and filter to African countries
-   Audit for missing years and align both datasets on the same reporting year per country
-   Standardise country naming across the two source tables
-   Calculate the derived column: population without electricity access (population × (1 − access rate))

### Stage 2 — Analysis

-   Rank countries by both access rate and absolute population without power
-   Identify countries that look ''moderate priority'' by rate alone but are ''high priority'' once population is factored in
-   Group countries into priority tiers combining both dimensions

### Stage 3 — Visualisation & Reporting

-   Build a dashboard tab with a rate-vs-population comparison chart and a priority tier table
-   Highlight the 3–5 countries representing the largest unserved populations
-   Write a short prioritisation recommendation for the non-profit''s deployment planning

## Expected Deliverables

-   Google Sheets workbook: raw data tab, cleaning log tab, calculation tabs, and dashboard tab
-   Prioritisation summary (1 page) with the top recommended countries and rationale
-   GitHub repository with an exported copy of the workbook and a completed README

## Assessment Rubric

| Criterion | What Good Looks Like | Weight |
| --- | --- | --- |
| Data Cleaning | Access and population data correctly aligned and missing years handled | 20% |
| Population Calculation | Formula correctly converts rate into absolute unserved population | 25% |
| Priority Tiering | Tiering logic combines rate and population sensibly | 20% |
| Chart Clarity | Charts clearly show the difference between rate-based and population-based priority | 20% |
| Recommendation Quality | Final prioritisation is well-reasoned and clearly justified | 5% |
| Documentation | README is complete and repository is well-organised | 10% |

## Stretch Challenge

**For learners who want to go further:**

-   Layer in urban/rural access breakdowns where available to refine the priority ranking further
-   Estimate the number of off-grid solar units needed to close the gap in the top 3 priority countries using a simple assumption-based calculation
-   Write a reflection on why percentage-only reporting can mislead resource allocation decisions

## Responsible AI Guidance

**You may use AI to:** explain concepts, debug formulas, check your writing clarity, and brainstorm analytical questions.

**You may not use AI to:** generate the analysis, write your recommendations, or produce your report for you. Your interpretations and conclusions must be your own.

If you use AI assistance significantly at any stage, note it briefly in your README. Employers value honesty about tooling — what matters is that the thinking and judgement are yours.

## Reflection Questions

Include written answers to at least three of these in your README or a separate reflection document:

-   Which country changed rank the most once you factored in population, and why does that matter?
-   What was the most significant data alignment challenge, and how did you resolve it?
-   How did you decide on your priority tier thresholds?
-   If you were presenting this to the non-profit''s board, what three sentences would you lead with?
-   What additional data would most improve the precision of your prioritisation?

## GitHub Portfolio Guidance

Organise your repository as follows:

~~~text
electricity-access-energy-poverty/ ├── data/ │ └── raw/ ← link to source, not the file itself ├── sheets/ │ └── electricity-access-energy-poverty.xlsx ← exported copy of your Google Sheet ├── images/ │ └── chart_screenshots.png └── README.md
~~~

Your README should include: project title, business challenge, tools used, dataset source and link, key findings (3 bullet points), and screenshots of your key charts.

Full GitHub Guide →

## LinkedIn Showcase Guidance

When sharing this project on LinkedIn, use this structure:

-   **Hook:** Start with the business problem, not the tools ("An energy access non-profit needed to know not just where coverage was lowest, but where the most people were actually affected…")
-   **What you did:** Briefly describe your analytical approach in Google Sheets
-   **Key finding:** Share one specific, concrete insight from the data
-   **Link:** Include your GitHub repository link
-   **Tags:** #DataAnalytics #GoogleSheets #ALXAfrica #EnergyAccess #PortfolioProject

Full LinkedIn Guide →',
  'published',
  6,
  now()
),
(
  'da2-008',
  'hr-workforce-diversity-and-attrition-audit',
  'HR Workforce Diversity & Attrition Audit',
  'DA-2',
  'Google Sheets',
  'Human Resources',
  'Intermediate',
  '8–12 hours',
  array['Data Cleaning', 'Pivot Tables', 'Functions', 'Statistical Reasoning']::text[],
  array['Google Sheets']::text[],
  'Analyse an HR dataset to identify attrition drivers, audit workforce diversity metrics, and present recommendations to a people operations team.',
  'https://www.kaggle.com/datasets/pavansubhasht/ibm-hr-analytics-attrition-dataset',
  '## Business Challenge

You have been engaged as a data analyst by a mid-sized company''s people operations team. Attrition has been rising, and leadership suspects it isn''t evenly distributed across departments or demographic groups — but no one has actually audited the data to confirm it.

Your task is to analyse the company''s HR dataset to identify attrition drivers, audit workforce diversity metrics, and present recommendations to the people operations team.

## Background

Attrition analysis is one of the most sensitive and high-value applications of people analytics — get it wrong, and a company wastes resources on the wrong retention interventions; get it right, and it can meaningfully close costly turnover in the highest-risk groups. It also demands a careful, non-speculative approach: correlation in HR data must be handled responsibly.

This project simulates the kind of workforce audit a data analyst would produce for a people operations or HR analytics team.

## Project Objective

Analyse an HR dataset to identify the strongest drivers of attrition, audit workforce diversity metrics across departments, and present actionable, responsibly-framed recommendations to a people operations team.

## Learning Objectives

By completing this project you will demonstrate the ability to:

-   Clean and structure real-world HR records containing sensitive demographic fields
-   Design pivot tables to compare attrition rate across departments, tenure bands, and demographic groups
-   Use spreadsheet functions to calculate workforce diversity ratios
-   Apply statistical reasoning to identify genuine attrition drivers, not spurious correlations
-   Communicate workforce findings responsibly to a people operations audience

## Dataset Information

| Field | Details |
| --- | --- |
| Dataset Name | IBM HR Analytics Employee Attrition & Performance |
| Publisher | Kaggle (IBM-published sample dataset) |
| Description | Employee-level records including department, job role, tenure, satisfaction scores, compensation band, demographic fields, and attrition status |
| File Format | CSV |
| Approximate Size | ~250KB |
| Licence | Public — check Kaggle dataset page for current licence terms |
| Download Link | [kaggle.com — IBM HR Analytics ↗](https://www.kaggle.com/datasets/pavansubhasht/ibm-hr-analytics-attrition-dataset) |
| Access | Free Kaggle account required. Click ''Download'' on the dataset page. |
| Known Limitations | This is a synthetic/sample dataset IBM published for analytics training purposes, not real employee data. Treat findings as illustrative of methodology, and say so clearly in your report — never present synthetic findings as representing a real company''s workforce. |
| Last Verified | July 2026 |

## Project Tasks

### Stage 1 — Data Cleaning & Preparation

-   Import the raw employee export and audit for missing values and inconsistent category labels
-   Standardise department, job role, and tenure band categories
-   Calculate derived columns: tenure bands, compensation bands, and satisfaction score groupings
-   Document all cleaning decisions, especially around any sensitive demographic fields

### Stage 2 — Analysis

-   Build pivot tables comparing attrition rate by department, tenure band, and job satisfaction score
-   Calculate workforce diversity ratios by department using the available demographic fields
-   Identify which factors show the strongest association with attrition, being careful to note association is not causation

### Stage 3 — Visualisation & Reporting

-   Build a dashboard tab with an attrition-by-department chart and a diversity ratio summary
-   Highlight the department(s) and tenure band(s) with the highest attrition risk
-   Write recommendations for the people operations team, clearly separating strong findings from speculative ones

## Expected Deliverables

-   Google Sheets workbook: raw data tab, cleaning log tab, pivot tables, and dashboard tab
-   Recommendations summary (1 page) for the people operations team
-   GitHub repository with an exported copy of the workbook and a completed README

## Assessment Rubric

| Criterion | What Good Looks Like | Weight |
| --- | --- | --- |
| Data Cleaning | Categories standardised correctly, cleaning decisions documented with care around sensitive fields | 20% |
| Pivot Table Design | Tables correctly compare attrition across the right dimensions | 20% |
| Diversity Ratio Calculation | Formulas correctly calculate representation ratios by department | 15% |
| Analytical Rigour | Distinguishes association from causation; avoids overreaching claims | 20% |
| Chart Clarity | Dashboard clearly and responsibly communicates findings | 15% |
| Documentation | README is complete and repository is well-organised | 10% |

## Stretch Challenge

**For learners who want to go further:**

-   Build a simple attrition risk score combining the two or three strongest factors you identified
-   Segment the diversity audit further by job level to check whether representation narrows at senior levels
-   Write a reflection on the ethical considerations of analysing demographic data in an HR context

## Responsible AI Guidance

**You may use AI to:** explain concepts, debug formulas, check your writing clarity, and brainstorm analytical questions.

**You may not use AI to:** generate the analysis, write your recommendations, or produce your report for you. Your interpretations and conclusions must be your own.

If you use AI assistance significantly at any stage, note it briefly in your README. Employers value honesty about tooling — what matters is that the thinking and judgement are yours.

## Reflection Questions

Include written answers to at least three of these in your README or a separate reflection document:

-   How did you avoid overstating correlation as causation in your attrition findings?
-   What was the most significant data quality issue you encountered, and how did you resolve it?
-   Which finding most surprised you, and why?
-   If you were presenting this to the people operations team, what three sentences would you lead with?
-   What additional data would most improve the reliability of your recommendations?

## GitHub Portfolio Guidance

Organise your repository as follows:

~~~text
hr-workforce-diversity-attrition-audit/ ├── data/ │ └── raw/ ← link to source, not the file itself ├── sheets/ │ └── hr-workforce-diversity-attrition-audit.xlsx ← exported copy of your Google Sheet ├── images/ │ └── chart_screenshots.png └── README.md
~~~

Your README should include: project title, business challenge, tools used, dataset source and link, key findings (3 bullet points), and screenshots of your key charts.

Full GitHub Guide →

## LinkedIn Showcase Guidance

When sharing this project on LinkedIn, use this structure:

-   **Hook:** Start with the business problem, not the tools ("Attrition was rising, and no one on the People team could say exactly why — or where…")
-   **What you did:** Briefly describe your analytical approach in Google Sheets
-   **Key finding:** Share one specific, concrete insight from the data
-   **Link:** Include your GitHub repository link
-   **Tags:** #DataAnalytics #GoogleSheets #ALXAfrica #PeopleAnalytics #PortfolioProject

Full LinkedIn Guide →',
  'published',
  7,
  now()
),
(
  'da3-001',
  'hospital-database-patient-and-treatment-analytics',
  'Hospital Database: Patient & Treatment Analytics',
  'DA-3',
  'MySQL',
  'Healthcare',
  'Beginner',
  '8–12 hours',
  array['SQL Foundations', 'Joins', 'Aggregations', 'Filtering']::text[],
  array['MySQL']::text[],
  'Query a structured hospital database to answer operational questions about patient volumes, treatment outcomes, and departmental performance.',
  'https://www.kaggle.com/datasets/nehaprabhavalkar/av-healthcare-analytics-ii',
  '## Business Challenge

You have been engaged as a data analyst by a hospital administration team that keeps patient and treatment records in a relational database but has no one regularly querying it for operational insight. Leadership wants to understand patient volumes, treatment outcomes, and departmental performance directly from the underlying data.

Your task is to design and query a structured hospital database in MySQL to answer a set of operational questions the administration team can act on.

## Background

Hospital operations generate large volumes of structured, relational data — patients, admissions, departments, treatments — that is best explored with SQL rather than a spreadsheet. Being able to write clear, correct, well-commented queries against a live schema is a core data analyst skill.

This project simulates the kind of query-based reporting work a data analyst would do for a hospital''s operations or quality-improvement team.

## Project Objective

Query a structured hospital database to answer operational questions about patient volumes, treatment outcomes, and departmental performance, and present findings to hospital administration.

## Learning Objectives

By completing this project you will demonstrate the ability to:

-   Design and import a relational schema for patient and admission data
-   Write SQL queries using joins to combine data across multiple tables
-   Use aggregate functions to summarise patient volumes and outcomes
-   Apply filtering logic to isolate specific patient cohorts or time periods
-   Translate query results into operational recommendations for hospital administration

## Dataset Information

| Field | Details |
| --- | --- |
| Dataset Name | Healthcare Analytics Dataset |
| Publisher | Kaggle |
| Description | Anonymised patient records including admission dates, diagnoses, treatments, length of stay, and outcomes across multiple facilities |
| File Format | CSV (import into MySQL as multiple normalised tables) |
| Approximate Size | ~25MB |
| Licence | Public — CC0 (check Kaggle page for latest terms) |
| Download Link | [kaggle.com — Healthcare Analytics II ↗](https://www.kaggle.com/datasets/nehaprabhavalkar/av-healthcare-analytics-ii) |
| Access | Free Kaggle account required. Click ''Download'' on the dataset page, then import into MySQL Workbench or your preferred client. |
| Known Limitations | Dataset is based on an Indian hospital system. Treat it as representative data for demonstrating SQL analysis skills — focus on the querying process, not the geography. |
| Last Verified | July 2026 |

## Project Tasks

### Stage 1 — Schema Design & Data Import

-   Design a normalised schema: patients, admissions, departments, and facilities tables
-   Import the raw CSV and split it into the appropriate normalised tables
-   Define primary and foreign keys, and appropriate indexes for the columns you''ll filter/join on most
-   Document your schema design decisions, including any normalisation trade-offs

### Stage 2 — Query Development

-   Write queries to answer these business questions:
    -   Which departments have the highest average length of stay?
    -   What is the 30-day readmission rate by facility and by diagnosis category?
    -   Which age groups account for the highest proportion of emergency admissions?
    -   How does facility performance vary by bed occupancy rate?
-   Save all queries as documented .sql scripts with inline comments explaining the logic

### Stage 3 — Insights & Reporting

-   Summarise your query results into a findings table covering the four business questions
-   Identify the two or three most actionable findings for hospital administration
-   Write a short summary explaining what the findings mean operationally

## Expected Deliverables

-   MySQL schema creation script (schema.sql) with comments
-   MySQL analysis queries (analysis.sql), each commented and mapped to a business question
-   Findings summary (1 page) written for hospital administration
-   GitHub repository with all scripts and a completed README

## Assessment Rubric

| Criterion | What Good Looks Like | Weight |
| --- | --- | --- |
| Schema Design | Tables are correctly normalised with appropriate keys and relationships | 20% |
| Query Accuracy | Queries return correct results using appropriate joins and aggregations | 30% |
| Code Quality | Queries are clearly formatted and commented | 15% |
| Filtering Logic | WHERE/HAVING clauses correctly isolate the right cohorts | 15% |
| Insight Quality | Findings are specific, evidence-based, and operationally relevant | 10% |
| Documentation | README is complete and repository is well-organised | 10% |

## Stretch Challenge

**For learners who want to go further:**

-   Add a query using window functions to rank departments by length-of-stay within each facility
-   Build a view that pre-aggregates key metrics for a simple reporting layer
-   Write a reflection on how you''d redesign the schema if this were a live, continuously updated system

## Responsible AI Guidance

**You may use AI to:** explain SQL concepts, debug query syntax errors, check your writing clarity, and brainstorm analytical questions.

**You may not use AI to:** generate your queries end-to-end, write your analysis, or produce your report for you. Your query logic and interpretations must be your own.

If you use AI assistance significantly at any stage, note it briefly in your README. Employers value honesty about tooling — what matters is that the thinking and judgement are yours.

## Reflection Questions

Include written answers to at least three of these in your README or a separate reflection document:

-   What normalisation trade-offs did you make when designing your schema, and why?
-   Which query was the most challenging to write correctly? What approach did you take?
-   How did you validate that your join logic wasn''t creating duplicate or dropped rows?
-   If you were presenting this to the hospital''s operations director, what three sentences would you lead with?
-   What limitations of this dataset most affected the quality of your recommendations?

## GitHub Portfolio Guidance

Organise your repository as follows:

~~~text
hospital-database-patient-treatment-analytics/ ├── data/ │ └── raw/ ← link to source, not the file itself ├── sql/ │ ├── schema.sql │ └── analysis.sql ├── images/ │ └── query_results.png └── README.md
~~~

Your README should include: project title, business challenge, tools used, dataset source and link, key findings (3 bullet points), and screenshots or output samples of your key queries.

Full GitHub Guide →

## LinkedIn Showcase Guidance

When sharing this project on LinkedIn, use this structure:

-   **Hook:** Start with the business problem, not the tools ("A hospital''s own database held the answers to its performance problems — nobody was asking it the right questions…")
-   **What you did:** Briefly describe your analytical approach in MySQL
-   **Key finding:** Share one specific, concrete insight from the data
-   **Link:** Include your GitHub repository link
-   **Tags:** #DataAnalytics #SQL #MySQL #ALXAfrica #HealthcareAnalytics #PortfolioProject

Full LinkedIn Guide →',
  'published',
  8,
  now()
),
(
  'da3-002',
  'e-commerce-orders-and-revenue-intelligence',
  'E-commerce Orders & Revenue Intelligence',
  'DA-3',
  'MySQL',
  'Retail & E-commerce',
  'Beginner',
  '8–12 hours',
  array['SQL Foundations', 'Aggregations', 'Joins', 'Functions']::text[],
  array['MySQL']::text[],
  'Use SQL to explore an e-commerce orders database, segment customers by purchase behaviour, and identify top-performing product categories.',
  'https://www.kaggle.com/datasets/olistbr/brazilian-ecommerce',
  '## Business Challenge

You have been engaged as a data analyst by an e-commerce marketplace operator who wants to understand where revenue is actually coming from — which product categories, which customer segments, which regions — directly from the orders database.

Your task is to use SQL to explore the orders database, segment customers by purchase behaviour, and identify the top-performing product categories.

## Background

E-commerce marketplaces generate rich relational data — orders, order items, products, customers, sellers — that only becomes useful once someone can query it correctly. A data analyst''s job here is to translate business questions like "who are our best customers?" into precise, correct SQL.

This project simulates the kind of revenue intelligence work a data analyst would do for a marketplace operations or growth team.

## Project Objective

Use SQL to explore an e-commerce orders database, segment customers by purchase behaviour, and identify top-performing product categories to inform growth strategy.

## Learning Objectives

By completing this project you will demonstrate the ability to:

-   Query a multi-table e-commerce schema using joins across orders, items, products, and customers
-   Use aggregate functions to calculate revenue by category, region, and time period
-   Apply SQL functions to derive customer-level purchase metrics
-   Segment customers into behavioural groups using SQL logic
-   Translate revenue query results into growth recommendations

## Dataset Information

| Field | Details |
| --- | --- |
| Dataset Name | Brazilian E-commerce Public Dataset by Olist |
| Publisher | Kaggle (Olist) |
| Description | Real commercial orders from a Brazilian marketplace, including orders, order items, products, customers, sellers, and reviews across multiple related tables |
| File Format | CSV (multiple related files, import into MySQL as separate tables) |
| Approximate Size | ~100MB across all files |
| Licence | Public — CC BY-NC-SA 4.0 (check Kaggle page for latest terms) |
| Download Link | [kaggle.com — Brazilian E-commerce (Olist) ↗](https://www.kaggle.com/datasets/olistbr/brazilian-ecommerce) |
| Access | Free Kaggle account required. Download all CSV files and import each as a separate table in MySQL, preserving the relationships described in the dataset schema diagram. |
| Known Limitations | Data represents a specific Brazilian marketplace and time period. Treat findings as illustrative of methodology; note this scope clearly in your report. |
| Last Verified | July 2026 |

## Project Tasks

### Stage 1 — Schema Design & Data Import

-   Import all provided tables into MySQL, preserving the documented relationships between orders, items, products, customers, and sellers
-   Verify foreign key relationships and add indexes on columns you''ll join or filter on frequently
-   Audit for orphaned records (e.g. order items with no matching order) and document how you handled them

### Stage 2 — Query Development

-   Write queries to answer these business questions:
    -   Which product categories generate the highest total revenue?
    -   Who are the top 10% of customers by total spend, and what share of revenue do they represent?
    -   How does average order value vary by region?
    -   Which product categories have the highest average review score, and does that correlate with repeat purchases?
-   Save all queries as documented .sql scripts with inline comments explaining the logic

### Stage 3 — Insights & Reporting

-   Summarise your query results into a findings table covering the four business questions
-   Identify the 2–3 categories or segments most worth further investment
-   Write a short growth-oriented recommendation for the marketplace operator

## Expected Deliverables

-   MySQL schema/import script (schema.sql) with comments
-   MySQL analysis queries (analysis.sql), each commented and mapped to a business question
-   Growth recommendations summary (1 page)
-   GitHub repository with all scripts and a completed README

## Assessment Rubric

| Criterion | What Good Looks Like | Weight |
| --- | --- | --- |
| Data Import & Schema | Tables correctly imported with relationships preserved | 15% |
| Query Accuracy | Queries return correct results using appropriate joins and aggregations | 30% |
| Code Quality | Queries are clearly formatted and commented | 15% |
| Segmentation Logic | Customer segmentation is well-reasoned and correctly implemented in SQL | 15% |
| Insight Quality | Findings are specific and directly useful for growth decisions | 15% |
| Documentation | README is complete and repository is well-organised | 10% |

## Stretch Challenge

**For learners who want to go further:**

-   Use a window function to calculate each customer''s rank by lifetime spend within their region
-   Write a query identifying products frequently purchased together (a simple market-basket view)
-   Write a reflection on how you''d extend this analysis with seller-level performance data

## Responsible AI Guidance

**You may use AI to:** explain SQL concepts, debug query syntax errors, check your writing clarity, and brainstorm analytical questions.

**You may not use AI to:** generate your queries end-to-end, write your analysis, or produce your report for you. Your query logic and interpretations must be your own.

If you use AI assistance significantly at any stage, note it briefly in your README. Employers value honesty about tooling — what matters is that the thinking and judgement are yours.

## Reflection Questions

Include written answers to at least three of these in your README or a separate reflection document:

-   What was the most challenging join to get right, and why?
-   How did you define your customer segments, and what alternative definition might change the findings?
-   Which finding most surprised you, and why?
-   If you were presenting this to the marketplace''s growth team, what three sentences would you lead with?
-   What additional data would most improve the precision of your recommendations?

## GitHub Portfolio Guidance

Organise your repository as follows:

~~~text
ecommerce-orders-revenue-intelligence/ ├── data/ │ └── raw/ ← link to source, not the file itself ├── sql/ │ ├── schema.sql │ └── analysis.sql ├── images/ │ └── query_results.png └── README.md
~~~

Your README should include: project title, business challenge, tools used, dataset source and link, key findings (3 bullet points), and screenshots or output samples of your key queries.

Full GitHub Guide →

## LinkedIn Showcase Guidance

When sharing this project on LinkedIn, use this structure:

-   **Hook:** Start with the business problem, not the tools ("A marketplace operator had years of order data — and no clear answer to where its revenue was actually coming from…")
-   **What you did:** Briefly describe your analytical approach in MySQL
-   **Key finding:** Share one specific, concrete insight from the data
-   **Link:** Include your GitHub repository link
-   **Tags:** #DataAnalytics #SQL #MySQL #ALXAfrica #Ecommerce #PortfolioProject

Full LinkedIn Guide →',
  'published',
  9,
  now()
),
(
  'da3-003',
  'banking-transactions-and-fraud-pattern-detection',
  'Banking Transactions & Fraud Pattern Detection',
  'DA-3',
  'MySQL',
  'Banking & Finance',
  'Intermediate',
  '10–14 hours',
  array['Advanced SQL', 'Subqueries', 'Window Functions', 'Aggregations']::text[],
  array['MySQL']::text[],
  'Analyse a financial transactions database to identify suspicious patterns, segment customer risk profiles, and support a fraud monitoring team.',
  'https://www.kaggle.com/datasets/mlg-ulb/creditcardfraud',
  '## Business Challenge

You have been engaged as a data analyst by a bank''s fraud monitoring team. They suspect certain transaction patterns are associated with fraudulent activity, but no one has systematically queried the transaction database to confirm which patterns actually matter.

Your task is to analyse a financial transactions database using SQL to identify suspicious patterns, segment customer risk profiles, and support the fraud monitoring team''s rule-setting process.

## Background

Fraud detection at scale depends on being able to isolate rare events (fraudulent transactions are typically a tiny fraction of all transactions) using precise, well-constructed queries — subqueries, window functions, and careful aggregation are essential here, not just basic filtering.

This project simulates the kind of exploratory SQL analysis a data analyst would do to support a bank''s fraud monitoring or risk team before any machine learning model is built.

## Project Objective

Analyse a financial transactions database to identify suspicious patterns, segment customer risk profiles using SQL, and support a fraud monitoring team''s detection rules.

## Learning Objectives

By completing this project you will demonstrate the ability to:

-   Query a large transactional dataset using advanced SQL techniques
-   Use subqueries to isolate anomalous transactions relative to a customer''s typical behaviour
-   Apply window functions to calculate rolling and ranked transaction metrics
-   Use aggregation to build customer-level risk profiles
-   Communicate fraud pattern findings clearly to a risk management audience

## Dataset Information

| Field | Details |
| --- | --- |
| Dataset Name | Credit Card Fraud Detection Dataset |
| Publisher | Kaggle (ULB Machine Learning Group) |
| Description | Anonymised credit card transactions with a binary fraud label, including transaction amount, time, and PCA-transformed features |
| File Format | CSV (import into MySQL as a single transactions table) |
| Approximate Size | ~150MB |
| Licence | Public — Open Database License (ODbL) (check Kaggle page for latest terms) |
| Download Link | [kaggle.com — Credit Card Fraud Detection ↗](https://www.kaggle.com/datasets/mlg-ulb/creditcardfraud) |
| Access | Free Kaggle account required. Click ''Download'' on the dataset page, then import into MySQL. |
| Known Limitations | Transaction features are PCA-transformed for privacy, so you won''t be able to interpret individual features by name — focus your analysis on amount, time, and the fraud label rather than trying to interpret the anonymised features. |
| Last Verified | July 2026 |

## Project Tasks

### Stage 1 — Schema Design & Data Import

-   Import the transactions CSV into MySQL and set appropriate data types and indexes (especially on the time and fraud label columns)
-   Audit for duplicate transaction records and class imbalance between fraud and non-fraud cases
-   Document the class imbalance and how it affects the interpretation of any aggregate statistics

### Stage 2 — Query Development

-   Write queries to answer these business questions:
    -   How does the distribution of transaction amount differ between fraudulent and legitimate transactions?
    -   Are fraudulent transactions concentrated at particular times (e.g. specific hours)?
    -   What proportion of high-value transactions (above a defined threshold) are fraudulent, compared to the overall fraud rate?
    -   Using a window function, how does each transaction''s amount compare to a rolling average of recent transactions?
-   Save all queries as documented .sql scripts with inline comments explaining the logic

### Stage 3 — Insights & Reporting

-   Summarise your query results into a findings table covering the four business questions
-   Propose 2–3 rule-of-thumb detection signals the fraud team could monitor based on your findings
-   Write a short summary explaining the practical value and limitations of a rules-based approach

## Expected Deliverables

-   MySQL schema/import script (schema.sql) with comments
-   MySQL analysis queries (analysis.sql), each commented and mapped to a business question
-   Detection signal recommendations (1 page)
-   GitHub repository with all scripts and a completed README

## Assessment Rubric

| Criterion | What Good Looks Like | Weight |
| --- | --- | --- |
| Data Import & Indexing | Table correctly imported with appropriate indexes for query performance | 10% |
| Query Accuracy | Queries correctly use subqueries and window functions to isolate patterns | 30% |
| Code Quality | Queries are clearly formatted and commented | 15% |
| Statistical Reasoning | Correctly accounts for class imbalance when interpreting results | 20% |
| Insight Quality | Findings are specific and translate into plausible detection signals | 15% |
| Documentation | README is complete and repository is well-organised | 10% |

## Stretch Challenge

**For learners who want to go further:**

-   Use a CTE to build a reusable rolling-average view, then query it for multiple threshold scenarios
-   Calculate a simple composite risk score per transaction combining amount, time, and rolling deviation
-   Write a reflection on why a rules-based SQL approach has limits compared to a trained fraud detection model

## Responsible AI Guidance

**You may use AI to:** explain SQL concepts, debug query syntax errors, check your writing clarity, and brainstorm analytical questions.

**You may not use AI to:** generate your queries end-to-end, write your analysis, or produce your report for you. Your query logic and interpretations must be your own.

If you use AI assistance significantly at any stage, note it briefly in your README. Employers value honesty about tooling — what matters is that the thinking and judgement are yours.

## Reflection Questions

Include written answers to at least three of these in your README or a separate reflection document:

-   How did the severe class imbalance in this dataset affect how you interpreted your aggregate results?
-   Which query was the most challenging to write correctly, and what approach did you take?
-   What signal did you find most promising for fraud detection, and why?
-   If you were presenting this to the bank''s risk team, what three sentences would you lead with?
-   What are the limitations of a purely rules-based (non-ML) approach to fraud detection?

## GitHub Portfolio Guidance

Organise your repository as follows:

~~~text
banking-transactions-fraud-pattern-detection/ ├── data/ │ └── raw/ ← link to source, not the file itself ├── sql/ │ ├── schema.sql │ └── analysis.sql ├── images/ │ └── query_results.png └── README.md
~~~

Your README should include: project title, business challenge, tools used, dataset source and link, key findings (3 bullet points), and screenshots or output samples of your key queries.

Full GitHub Guide →

## LinkedIn Showcase Guidance

When sharing this project on LinkedIn, use this structure:

-   **Hook:** Start with the business problem, not the tools ("A bank''s fraud team had a hunch about which transactions looked suspicious — but no query had ever confirmed it…")
-   **What you did:** Briefly describe your analytical approach in MySQL
-   **Key finding:** Share one specific, concrete insight from the data
-   **Link:** Include your GitHub repository link
-   **Tags:** #DataAnalytics #SQL #MySQL #ALXAfrica #FraudDetection #PortfolioProject

Full LinkedIn Guide →',
  'published',
  10,
  now()
),
(
  'da3-004',
  'african-football-league-statistics',
  'African Football League Statistics',
  'DA-3',
  'MySQL',
  'Sports Analytics',
  'Beginner',
  '6–10 hours',
  array['SQL Foundations', 'Joins', 'Aggregations', 'Filtering']::text[],
  array['MySQL']::text[],
  'Query a football statistics database to rank teams, identify top scorers, and build a performance table for an African league season.',
  'https://www.kaggle.com/datasets/hugomathien/soccer',
  '## Business Challenge

You have been engaged as a data analyst by a football league''s media and analytics team. They want a rigorous, data-backed performance table and top-scorer ranking for a season — something more reliable than manually tallied statistics.

Your task is to query a football statistics database to rank teams, identify top scorers, and build a performance table for a league season.

## Background

Sports statistics databases are a great environment for practising core SQL skills — joins across matches, teams, and players; aggregations for standings and scoring; and filtering for specific seasons or competitions. The logic mirrors what a data analyst would do for any league or competition operator.

This project simulates the kind of season-reporting work a data analyst would do for a football league''s media or analytics department.

## Project Objective

Query a football statistics database to rank teams, identify top scorers, and build an accurate performance table for a league season.

## Learning Objectives

By completing this project you will demonstrate the ability to:

-   Query a relational sports database using joins across matches, teams, and players
-   Use aggregate functions to calculate standings (wins, draws, losses, points, goal difference)
-   Apply filtering to isolate specific seasons, competitions, or team subsets
-   Validate query results against known football scoring rules
-   Present sports statistics clearly to a media/communications audience

## Dataset Information

| Field | Details |
| --- | --- |
| Dataset Name | European Soccer Database |
| Publisher | Kaggle |
| Description | Match, team, and player data covering multiple European leagues and seasons, including match results and player attributes |
| File Format | SQLite database (convert/import into MySQL) or CSV exports |
| Approximate Size | ~300MB (full database) |
| Licence | Public — check Kaggle page for latest terms |
| Download Link | [kaggle.com — European Soccer Database ↗](https://www.kaggle.com/datasets/hugomathien/soccer) |
| Access | Free Kaggle account required. Download the SQLite database and either query it directly or migrate the relevant tables into MySQL. |
| Known Limitations | This dataset covers European leagues, not African ones — treat it as representative data for practising the SQL techniques you''d apply to any football league''s statistics, and note this substitution in your README. |
| Last Verified | July 2026 |

## Project Tasks

### Stage 1 — Schema Design & Data Import

-   Import the match, team, and player tables into MySQL (or connect to the SQLite source and migrate the relevant tables)
-   Filter to a single league and season to keep the analysis focused
-   Verify referential integrity between match, team, and player IDs
-   Document any data quality issues you find in the source data

### Stage 2 — Query Development

-   Write queries to answer these business questions:
    -   What is the final league table (wins, draws, losses, points, goal difference) for the season, calculated directly from match results?
    -   Who are the top 10 goal scorers for the season?
    -   Which team had the best home record vs. away record?
    -   Which matches had the largest goal margin, and which teams were most frequently involved in high-scoring matches?
-   Save all queries as documented .sql scripts with inline comments explaining the logic

### Stage 3 — Insights & Reporting

-   Build a final standings table and top-scorer ranking from your query results
-   Cross-check your calculated standings against any reference table (or spot-check known results) to confirm accuracy
-   Write a short season summary highlighting 2–3 standout statistics

## Expected Deliverables

-   MySQL import/schema script (schema.sql) with comments
-   MySQL analysis queries (analysis.sql), each commented and mapped to a business question
-   Season summary (1 page) with final standings and top scorers
-   GitHub repository with all scripts and a completed README

## Assessment Rubric

| Criterion | What Good Looks Like | Weight |
| --- | --- | --- |
| Data Import | Tables correctly imported/filtered to the chosen league and season | 15% |
| Query Accuracy | Queries return correct results using appropriate joins and aggregations | 30% |
| Standings Logic | Points/goal difference calculations correctly follow standard football scoring rules | 20% |
| Code Quality | Queries are clearly formatted and commented | 15% |
| Validation | Results are cross-checked for accuracy against a reference or spot-check | 10% |
| Documentation | README is complete and repository is well-organised | 10% |

## Stretch Challenge

**For learners who want to go further:**

-   Add a query calculating each team''s longest winning/unbeaten streak using window functions
-   Build a head-to-head comparison query for the top two teams in the standings
-   Write a reflection on what additional data (e.g. player market value, injuries) would deepen a media analytics report

## Responsible AI Guidance

**You may use AI to:** explain SQL concepts, debug query syntax errors, check your writing clarity, and brainstorm analytical questions.

**You may not use AI to:** generate your queries end-to-end, write your analysis, or produce your report for you. Your query logic and interpretations must be your own.

If you use AI assistance significantly at any stage, note it briefly in your README. Employers value honesty about tooling — what matters is that the thinking and judgement are yours.

## Reflection Questions

Include written answers to at least three of these in your README or a separate reflection document:

-   How did you verify that your calculated standings matched the actual scoring rules of football?
-   Which query was the most challenging to write correctly, and what approach did you take?
-   What statistic in your findings would make the best headline for a media report?
-   If you were presenting this to the league''s communications team, what three sentences would you lead with?
-   What data quality issues did you find in the source data, and how did you handle them?

## GitHub Portfolio Guidance

Organise your repository as follows:

~~~text
african-football-league-statistics/ ├── data/ │ └── raw/ ← link to source, not the file itself ├── sql/ │ ├── schema.sql │ └── analysis.sql ├── images/ │ └── query_results.png └── README.md
~~~

Your README should include: project title, business challenge, tools used, dataset source and link, key findings (3 bullet points), and screenshots or output samples of your key queries.

Full GitHub Guide →

## LinkedIn Showcase Guidance

When sharing this project on LinkedIn, use this structure:

-   **Hook:** Start with the business problem, not the tools ("A league''s season table had always been tallied by hand — until the data was asked to do the job itself…")
-   **What you did:** Briefly describe your analytical approach in MySQL
-   **Key finding:** Share one specific, concrete insight from the data
-   **Link:** Include your GitHub repository link
-   **Tags:** #DataAnalytics #SQL #MySQL #ALXAfrica #SportsAnalytics #PortfolioProject

Full LinkedIn Guide →',
  'published',
  11,
  now()
),
(
  'da3-005',
  'telecom-subscriber-churn-analysis',
  'Telecom Subscriber Churn Analysis',
  'DA-3',
  'MySQL',
  'Telecommunications',
  'Intermediate',
  '10–14 hours',
  array['Advanced SQL', 'Subqueries', 'Aggregations', 'Window Functions']::text[],
  array['MySQL']::text[],
  'Query a telecom subscriber database to identify churn signals, segment users by usage patterns, and recommend retention interventions.',
  'https://www.kaggle.com/datasets/blastchar/telco-customer-churn',
  '## Business Challenge

You have been engaged as a data analyst by a telecom operator''s retention team. Subscriber churn has been rising, and the team needs to know exactly which usage patterns and account characteristics most strongly signal a subscriber about to leave.

Your task is to query a telecom subscriber database to identify churn signals, segment users by usage patterns, and recommend retention interventions.

## Background

Churn analysis is a staple of telecom analytics — the difference between a generic churn report and a genuinely useful one is precise SQL that correctly segments subscribers and isolates the factors that actually matter, rather than restating the overall churn rate.

This project simulates the kind of retention-focused analysis a data analyst would do for a telecom operator''s customer experience or retention team.

## Project Objective

Query a telecom subscriber database to identify churn signals, segment users by usage patterns, and recommend retention interventions the operator can act on.

## Learning Objectives

By completing this project you will demonstrate the ability to:

-   Query a subscriber-level dataset using advanced SQL techniques
-   Use subqueries to compare churned vs. retained subscriber behaviour
-   Apply aggregation to build usage-based subscriber segments
-   Use window functions to rank subscribers by churn risk indicators
-   Translate churn analysis into specific, actionable retention recommendations

## Dataset Information

| Field | Details |
| --- | --- |
| Dataset Name | Telco Customer Churn Dataset |
| Publisher | Kaggle (IBM sample dataset) |
| Description | Subscriber-level records including account tenure, service subscriptions, monthly charges, contract type, and churn status |
| File Format | CSV (import into MySQL as a subscribers table) |
| Approximate Size | ~1MB |
| Licence | Public — check Kaggle page for latest terms |
| Download Link | [kaggle.com — Telco Customer Churn ↗](https://www.kaggle.com/datasets/blastchar/telco-customer-churn) |
| Access | Free Kaggle account required. Click ''Download'' on the dataset page, then import into MySQL. |
| Known Limitations | This is a sample dataset published for analytics training, not a real operator''s live subscriber base. Treat findings as illustrative of methodology, and say so clearly in your report. |
| Last Verified | July 2026 |

## Project Tasks

### Stage 1 — Schema Design & Data Import

-   Import the subscriber CSV into MySQL and set appropriate data types
-   Audit for missing values in key fields (e.g. total charges) and decide how to handle them
-   Standardise categorical fields (contract type, payment method, service subscriptions)

### Stage 2 — Query Development

-   Write queries to answer these business questions:
    -   What is the churn rate by contract type, and how does it compare to the overall churn rate?
    -   Do subscribers with shorter tenure churn at a meaningfully higher rate than long-tenure subscribers?
    -   Which combination of services (e.g. no tech support, no online security) is most associated with churn?
    -   Using a window function, how do monthly charges for churned subscribers compare to the average for their contract type?
-   Save all queries as documented .sql scripts with inline comments explaining the logic

### Stage 3 — Insights & Reporting

-   Summarise your query results into a findings table covering the four business questions
-   Identify the top 2–3 churn risk signals your queries revealed
-   Write specific retention intervention recommendations tied to those signals

## Expected Deliverables

-   MySQL schema/import script (schema.sql) with comments
-   MySQL analysis queries (analysis.sql), each commented and mapped to a business question
-   Retention recommendations summary (1 page)
-   GitHub repository with all scripts and a completed README

## Assessment Rubric

| Criterion | What Good Looks Like | Weight |
| --- | --- | --- |
| Data Cleaning & Import | Missing values and categories correctly handled and documented | 15% |
| Query Accuracy | Queries correctly use subqueries and window functions to isolate churn signals | 30% |
| Code Quality | Queries are clearly formatted and commented | 15% |
| Segmentation Logic | Usage-based segments are well-reasoned and correctly implemented in SQL | 15% |
| Recommendation Quality | Recommendations are specific, grounded in the data, and actionable | 15% |
| Documentation | README is complete and repository is well-organised | 10% |

## Stretch Challenge

**For learners who want to go further:**

-   Build a composite churn risk score combining the 2–3 strongest signals you identified
-   Use a CTE to create a reusable subscriber segmentation view, then query it across multiple analyses
-   Write a reflection on what additional data (e.g. customer service call logs) would sharpen the churn signals further

## Responsible AI Guidance

**You may use AI to:** explain SQL concepts, debug query syntax errors, check your writing clarity, and brainstorm analytical questions.

**You may not use AI to:** generate your queries end-to-end, write your analysis, or produce your report for you. Your query logic and interpretations must be your own.

If you use AI assistance significantly at any stage, note it briefly in your README. Employers value honesty about tooling — what matters is that the thinking and judgement are yours.

## Reflection Questions

Include written answers to at least three of these in your README or a separate reflection document:

-   Which churn signal surprised you most, and why?
-   How did you handle subscribers with missing or zero tenure in your analysis?
-   Which query was the most challenging to write correctly, and what approach did you take?
-   If you were presenting this to the retention team, what three sentences would you lead with?
-   What additional data would most improve the precision of your recommendations?

## GitHub Portfolio Guidance

Organise your repository as follows:

~~~text
telecom-subscriber-churn-analysis/ ├── data/ │ └── raw/ ← link to source, not the file itself ├── sql/ │ ├── schema.sql │ └── analysis.sql ├── images/ │ └── query_results.png └── README.md
~~~

Your README should include: project title, business challenge, tools used, dataset source and link, key findings (3 bullet points), and screenshots or output samples of your key queries.

Full GitHub Guide →

## LinkedIn Showcase Guidance

When sharing this project on LinkedIn, use this structure:

-   **Hook:** Start with the business problem, not the tools ("A telecom operator''s churn rate kept climbing — and no one could say precisely which subscribers were most at risk…")
-   **What you did:** Briefly describe your analytical approach in MySQL
-   **Key finding:** Share one specific, concrete insight from the data
-   **Link:** Include your GitHub repository link
-   **Tags:** #DataAnalytics #SQL #MySQL #ALXAfrica #ChurnAnalysis #PortfolioProject

Full LinkedIn Guide →',
  'published',
  12,
  now()
),
(
  'da3-006',
  'ride-sharing-operations-driver-and-trip-analysis',
  'Ride-Sharing Operations: Driver & Trip Analysis',
  'DA-3',
  'MySQL',
  'Transportation & Logistics',
  'Intermediate',
  '10–14 hours',
  array['SQL Foundations', 'Joins', 'Aggregations', 'Subqueries']::text[],
  array['MySQL']::text[],
  'Analyse ride-sharing trip data to evaluate driver performance, peak demand windows, and route efficiency for an urban mobility operator.',
  'https://www.nyc.gov/site/tlc/about/tlc-trip-record-data.page',
  '## Business Challenge

You have been engaged as a data analyst by an urban mobility operator''s operations team. They need to understand driver performance, peak demand windows, and route efficiency directly from trip-level data, to improve how they allocate drivers across the city.

Your task is to query a ride-sharing trip database to evaluate driver performance, identify peak demand windows, and assess route efficiency.

## Background

Ride-sharing and mobility operators generate high-volume, time-stamped trip data that is ideal for demonstrating time-based SQL analysis — grouping by hour/day, calculating trip duration and distance metrics, and identifying demand patterns operations teams can act on.

This project simulates the kind of operational analysis a data analyst would do for a ride-sharing or urban mobility operations team.

## Project Objective

Analyse ride-sharing trip data to evaluate driver performance, peak demand windows, and route efficiency for an urban mobility operator.

## Learning Objectives

By completing this project you will demonstrate the ability to:

-   Query a large trip-level dataset using joins across trips, drivers, and locations where available
-   Use aggregation and time-based grouping to identify demand patterns by hour and day
-   Apply subqueries to compare individual driver performance against fleet averages
-   Calculate efficiency metrics (e.g. average trip duration/distance ratio) using SQL
-   Translate operational query results into driver allocation recommendations

## Dataset Information

| Field | Details |
| --- | --- |
| Dataset Name | TLC Trip Record Data |
| Publisher | New York City Taxi & Limousine Commission (TLC) |
| Description | Trip-level records including pickup/dropoff times and locations, trip distance, and fare information for licensed for-hire vehicles |
| File Format | CSV / Parquet (import a monthly extract into MySQL) |
| Approximate Size | ~500MB–1GB per month (recommend filtering to a single month for this project) |
| Licence | Public — NYC Open Data terms |
| Download Link | [nyc.gov — TLC Trip Record Data ↗](https://www.nyc.gov/site/tlc/about/tlc-trip-record-data.page) |
| Access | Free, no account required. Download a single month''s for-hire vehicle (FHV) or high-volume FHV trip file and import a manageable subset into MySQL. |
| Known Limitations | This dataset covers New York City rather than an African city — treat it as representative data for practising the SQL techniques that would apply to any ride-sharing operator''s trip data, and note this substitution in your README. Full monthly files are large; work with a filtered sample if needed. |
| Last Verified | July 2026 |

## Project Tasks

### Stage 1 — Schema Design & Data Import

-   Import a single month''s trip data into MySQL, filtering to a manageable sample if the full file is too large
-   Set appropriate indexes on pickup timestamp and any driver/vehicle identifier columns
-   Audit for implausible values (e.g. negative fares, zero-distance trips) and document how you handled them

### Stage 2 — Query Development

-   Write queries to answer these business questions:
    -   What are the peak demand hours by day of week, based on trip volume?
    -   How does average trip duration and fare vary by pickup hour?
    -   Which pickup zones/boroughs generate the highest trip volume during peak hours?
    -   Using a window function, how does each trip''s fare compare to the average fare for trips of similar distance?
-   Save all queries as documented .sql scripts with inline comments explaining the logic

### Stage 3 — Insights & Reporting

-   Summarise your query results into a findings table covering the four business questions
-   Identify the specific time windows and zones where driver allocation should be increased
-   Write short operational recommendations for the mobility operator''s dispatch team

## Expected Deliverables

-   MySQL schema/import script (schema.sql) with comments
-   MySQL analysis queries (analysis.sql), each commented and mapped to a business question
-   Operational recommendations summary (1 page)
-   GitHub repository with all scripts and a completed README

## Assessment Rubric

| Criterion | What Good Looks Like | Weight |
| --- | --- | --- |
| Data Import & Cleaning | Implausible values correctly identified and handled; import is well-indexed | 15% |
| Query Accuracy | Queries correctly use time-based grouping and window functions | 30% |
| Code Quality | Queries are clearly formatted and commented | 15% |
| Pattern Analysis | Demand and efficiency patterns are correctly identified across time and location | 20% |
| Recommendation Quality | Recommendations are specific, grounded in the data, and operationally actionable | 10% |
| Documentation | README is complete and repository is well-organised | 10% |

## Stretch Challenge

**For learners who want to go further:**

-   Build a query identifying the 5 highest-demand pickup-zone-and-hour combinations across the full month
-   Use a CTE to calculate a rolling 7-day average of daily trip volume to smooth out day-of-week effects
-   Write a reflection on how this analysis would need to change for a smaller city with sparser trip data

## Responsible AI Guidance

**You may use AI to:** explain SQL concepts, debug query syntax errors, check your writing clarity, and brainstorm analytical questions.

**You may not use AI to:** generate your queries end-to-end, write your analysis, or produce your report for you. Your query logic and interpretations must be your own.

If you use AI assistance significantly at any stage, note it briefly in your README. Employers value honesty about tooling — what matters is that the thinking and judgement are yours.

## Reflection Questions

Include written answers to at least three of these in your README or a separate reflection document:

-   How did you decide which values in the raw data were implausible enough to exclude?
-   Which query was the most challenging to write correctly, and what approach did you take?
-   What demand pattern most surprised you, and why?
-   If you were presenting this to the operator''s dispatch team, what three sentences would you lead with?
-   What additional data (e.g. driver supply by hour) would most improve the precision of your recommendations?

## GitHub Portfolio Guidance

Organise your repository as follows:

~~~text
ride-sharing-operations-driver-trip-analysis/ ├── data/ │ └── raw/ ← link to source, not the file itself ├── sql/ │ ├── schema.sql │ └── analysis.sql ├── images/ │ └── query_results.png └── README.md
~~~

Your README should include: project title, business challenge, tools used, dataset source and link, key findings (3 bullet points), and screenshots or output samples of your key queries.

Full GitHub Guide →

## LinkedIn Showcase Guidance

When sharing this project on LinkedIn, use this structure:

-   **Hook:** Start with the business problem, not the tools ("A mobility operator had millions of trip records — and still couldn''t say exactly when and where to put more drivers…")
-   **What you did:** Briefly describe your analytical approach in MySQL
-   **Key finding:** Share one specific, concrete insight from the data
-   **Link:** Include your GitHub repository link
-   **Tags:** #DataAnalytics #SQL #MySQL #ALXAfrica #MobilityAnalytics #PortfolioProject

Full LinkedIn Guide →',
  'published',
  13,
  now()
),
(
  'da3-007',
  'real-estate-listings-and-market-intelligence',
  'Real Estate Listings & Market Intelligence',
  'DA-3',
  'MySQL',
  'Real Estate',
  'Intermediate',
  '8–12 hours',
  array['SQL Foundations', 'Joins', 'Aggregations', 'Filtering']::text[],
  array['MySQL']::text[],
  'Query a property listings database to identify pricing trends by neighbourhood, property type, and listing age for a real estate advisory firm.',
  'https://www.kaggle.com/datasets/shree1992/housedata',
  '## Business Challenge

You have been engaged as a data analyst by a real estate advisory firm that wants to give clients evidence-based pricing guidance. Leadership needs to understand pricing trends by neighbourhood, property type, and listing age, directly from the listings database.

Your task is to query a property listings database to identify pricing trends and produce market intelligence the firm can share with clients.

## Background

Real estate pricing analysis depends on comparing like with like — a two-bedroom apartment and a five-bedroom house shouldn''t be lumped into the same average. Careful SQL grouping and filtering is what turns a raw listings table into genuinely useful market intelligence.

This project simulates the kind of market analysis a data analyst would produce for a real estate advisory or brokerage firm.

## Project Objective

Query a property listings database to identify pricing trends by neighbourhood, property type, and listing age, producing market intelligence for a real estate advisory firm.

## Learning Objectives

By completing this project you will demonstrate the ability to:

-   Query a property listings dataset using joins where the schema is split across multiple tables
-   Use aggregation and grouping to compare pricing across neighbourhoods and property types
-   Apply filtering to build fair, like-for-like comparisons
-   Use SQL functions to calculate price-per-square-foot and other normalised metrics
-   Translate market data into pricing guidance for a client-facing audience

## Dataset Information

| Field | Details |
| --- | --- |
| Dataset Name | House Prices Dataset |
| Publisher | Kaggle |
| Description | Property listing records including sale price, square footage, bedrooms/bathrooms, location, and listing date |
| File Format | CSV (import into MySQL as a listings table) |
| Approximate Size | ~1–5MB |
| Licence | Public — check Kaggle page for latest terms |
| Download Link | [kaggle.com — House Prices Dataset ↗](https://www.kaggle.com/datasets/shree1992/housedata) |
| Access | Free Kaggle account required. Click ''Download'' on the dataset page, then import into MySQL. |
| Known Limitations | This dataset covers a specific market and time period — treat findings as illustrative of methodology, and note the scope clearly in your report rather than presenting them as universal pricing guidance. |
| Last Verified | July 2026 |

## Project Tasks

### Stage 1 — Schema Design & Data Import

-   Import the listings CSV into MySQL and set appropriate data types
-   Audit for missing values, outlier prices, and inconsistent location naming
-   Calculate a derived column: price per square foot

### Stage 2 — Query Development

-   Write queries to answer these business questions:
    -   What is the average price per square foot by neighbourhood/location?
    -   How does listing price vary by property type and bedroom count, controlling for square footage?
    -   Which locations have the widest price range, and what might explain that spread?
    -   Using a window function, how does each listing''s price compare to the median price for similar properties (same type and bedroom count)?
-   Save all queries as documented .sql scripts with inline comments explaining the logic

### Stage 3 — Insights & Reporting

-   Summarise your query results into a findings table covering the four business questions
-   Identify the 2–3 clearest pricing patterns worth sharing with clients
-   Write a short market intelligence summary suitable for a client-facing audience

## Expected Deliverables

-   MySQL schema/import script (schema.sql) with comments
-   MySQL analysis queries (analysis.sql), each commented and mapped to a business question
-   Market intelligence summary (1 page)
-   GitHub repository with all scripts and a completed README

## Assessment Rubric

| Criterion | What Good Looks Like | Weight |
| --- | --- | --- |
| Data Cleaning & Import | Missing values and outliers correctly identified and handled | 20% |
| Query Accuracy | Queries return correct results using appropriate joins and aggregations | 30% |
| Code Quality | Queries are clearly formatted and commented | 15% |
| Comparison Fairness | Pricing comparisons correctly control for property type/size, not just raw averages | 15% |
| Insight Quality | Findings are specific and useful for client-facing guidance | 10% |
| Documentation | README is complete and repository is well-organised | 10% |

## Stretch Challenge

**For learners who want to go further:**

-   Build a query flagging listings priced significantly above or below the median for their comparable group (potential over/under-priced listings)
-   Add a CTE-based view that pre-calculates comparable group medians for reuse across queries
-   Write a reflection on what additional data (e.g. days-on-market, school district ratings) would strengthen the market intelligence

## Responsible AI Guidance

**You may use AI to:** explain SQL concepts, debug query syntax errors, check your writing clarity, and brainstorm analytical questions.

**You may not use AI to:** generate your queries end-to-end, write your analysis, or produce your report for you. Your query logic and interpretations must be your own.

If you use AI assistance significantly at any stage, note it briefly in your README. Employers value honesty about tooling — what matters is that the thinking and judgement are yours.

## Reflection Questions

Include written answers to at least three of these in your README or a separate reflection document:

-   How did you decide what counts as a ''comparable'' property for fair price comparisons?
-   Which query was the most challenging to write correctly, and what approach did you take?
-   Which pricing pattern most surprised you, and why?
-   If you were presenting this to the advisory firm''s clients, what three sentences would you lead with?
-   What additional data would most improve the precision of your market intelligence?

## GitHub Portfolio Guidance

Organise your repository as follows:

~~~text
real-estate-listings-market-intelligence/ ├── data/ │ └── raw/ ← link to source, not the file itself ├── sql/ │ ├── schema.sql │ └── analysis.sql ├── images/ │ └── query_results.png └── README.md
~~~

Your README should include: project title, business challenge, tools used, dataset source and link, key findings (3 bullet points), and screenshots or output samples of your key queries.

Full GitHub Guide →

## LinkedIn Showcase Guidance

When sharing this project on LinkedIn, use this structure:

-   **Hook:** Start with the business problem, not the tools ("A real estate firm''s clients kept asking ''is this a fair price?'' — and the listings database finally had an answer…")
-   **What you did:** Briefly describe your analytical approach in MySQL
-   **Key finding:** Share one specific, concrete insight from the data
-   **Link:** Include your GitHub repository link
-   **Tags:** #DataAnalytics #SQL #MySQL #ALXAfrica #RealEstate #PortfolioProject

Full LinkedIn Guide →',
  'published',
  14,
  now()
),
(
  'da3-008',
  'insurance-claims-and-risk-profiling',
  'Insurance Claims & Risk Profiling',
  'DA-3',
  'MySQL',
  'Insurance',
  'Advanced',
  '12–18 hours',
  array['Advanced SQL', 'Subqueries', 'Window Functions', 'CTEs']::text[],
  array['MySQL']::text[],
  'Use SQL to analyse insurance claims data, build risk profiles by customer segment, and surface insights that inform underwriting decisions.',
  'https://www.kaggle.com/datasets/teertha/ushealthinsurancedataset',
  '## Business Challenge

You have been engaged as a data analyst by an insurance underwriting team. They need risk profiles built directly from historical claims data to inform pricing and underwriting decisions — not intuition, but evidence from the claims database itself.

Your task is to use SQL to analyse insurance claims data, build risk profiles by customer segment, and surface insights that inform underwriting decisions.

## Background

Underwriting decisions depend on being able to segment policyholders by risk accurately and defensibly. This requires advanced SQL — subqueries to compare segment-level claim rates, window functions to rank risk within segments, and CTEs to keep complex multi-step logic readable and auditable.

This project simulates the kind of risk analysis a data analyst would produce for an insurance underwriting or actuarial support team.

## Project Objective

Use SQL to analyse insurance claims data, build risk profiles by customer segment, and surface insights that inform underwriting decisions.

## Learning Objectives

By completing this project you will demonstrate the ability to:

-   Query a claims dataset using advanced SQL: subqueries, window functions, and CTEs
-   Build customer segments based on demographic and policy characteristics
-   Calculate claim frequency and severity metrics by segment
-   Use CTEs to structure complex, multi-step risk calculations readably
-   Translate segment-level risk findings into underwriting-relevant insights

## Dataset Information

| Field | Details |
| --- | --- |
| Dataset Name | Health Insurance Dataset |
| Publisher | Kaggle |
| Description | Policyholder-level records including demographic characteristics, policy details, and claims/charges data |
| File Format | CSV (import into MySQL as a policyholders/claims table) |
| Approximate Size | ~1MB |
| Licence | Public — check Kaggle page for latest terms |
| Download Link | [kaggle.com — Insurance Dataset ↗](https://www.kaggle.com/datasets/teertha/ushealthinsurancedataset) |
| Access | Free Kaggle account required. Click ''Download'' on the dataset page, then import into MySQL. |
| Known Limitations | This dataset covers a specific market and is smaller/simpler than a real insurer''s claims database — treat findings as illustrative of methodology and CTE/window-function technique, and note this clearly in your report. |
| Last Verified | July 2026 |

## Project Tasks

### Stage 1 — Schema Design & Data Import

-   Import the policyholder/claims CSV into MySQL and set appropriate data types
-   Audit for missing values and outlier charge amounts
-   Define segment categories (e.g. age band, region, lifestyle factors available in the data)

### Stage 2 — Query Development

-   Write queries to answer these business questions:
    -   What is the average claim amount by risk segment (e.g. age band combined with a lifestyle factor)?
    -   Which segment shows the highest variance in claim amounts, indicating higher unpredictability?
    -   Using a CTE, how does each segment''s average claim compare to the overall population average?
    -   Using a window function, how do individual policyholders rank within their segment by claim amount?
-   Save all queries as documented .sql scripts with inline comments explaining the logic

### Stage 3 — Insights & Reporting

-   Summarise your query results into a risk profile table by segment
-   Identify the 2–3 segments that most warrant differentiated underwriting attention
-   Write a short summary explaining the risk profiling logic for an underwriting audience

## Expected Deliverables

-   MySQL schema/import script (schema.sql) with comments
-   MySQL analysis queries (analysis.sql), each commented and mapped to a business question, using CTEs and window functions
-   Risk profile summary (1 page)
-   GitHub repository with all scripts and a completed README

## Assessment Rubric

| Criterion | What Good Looks Like | Weight |
| --- | --- | --- |
| Data Cleaning & Import | Missing values and outliers correctly identified and handled | 15% |
| Query Accuracy | Subqueries, CTEs, and window functions are correctly and appropriately used | 30% |
| Code Quality | Queries are clearly structured, readable, and commented | 15% |
| Segmentation Logic | Risk segments are well-reasoned and consistently applied | 20% |
| Insight Quality | Findings are specific and defensible for underwriting use | 10% |
| Documentation | README is complete and repository is well-organised | 10% |

## Stretch Challenge

**For learners who want to go further:**

-   Build a composite risk score per segment combining claim frequency and severity into a single ranked metric
-   Use a recursive or multi-level CTE to build a segment hierarchy (e.g. region → age band → lifestyle factor)
-   Write a reflection on the ethical considerations of using demographic and lifestyle data in risk-based pricing

## Responsible AI Guidance

**You may use AI to:** explain SQL concepts, debug query syntax errors, check your writing clarity, and brainstorm analytical questions.

**You may not use AI to:** generate your queries end-to-end, write your analysis, or produce your report for you. Your query logic and interpretations must be your own.

If you use AI assistance significantly at any stage, note it briefly in your README. Employers value honesty about tooling — what matters is that the thinking and judgement are yours.

## Reflection Questions

Include written answers to at least three of these in your README or a separate reflection document:

-   How did you decide on your segment definitions, and what alternative definition might change the findings?
-   Which query was the most challenging to write correctly, and what approach did you take?
-   Which segment''s risk profile most surprised you, and why?
-   If you were presenting this to the underwriting team, what three sentences would you lead with?
-   What ethical considerations did you keep in mind when segmenting policyholders by demographic data?

## GitHub Portfolio Guidance

Organise your repository as follows:

~~~text
insurance-claims-risk-profiling/ ├── data/ │ └── raw/ ← link to source, not the file itself ├── sql/ │ ├── schema.sql │ └── analysis.sql ├── images/ │ └── query_results.png └── README.md
~~~

Your README should include: project title, business challenge, tools used, dataset source and link, key findings (3 bullet points), and screenshots or output samples of your key queries.

Full GitHub Guide →

## LinkedIn Showcase Guidance

When sharing this project on LinkedIn, use this structure:

-   **Hook:** Start with the business problem, not the tools ("An underwriting team priced risk on instinct — the claims data told a more precise story…")
-   **What you did:** Briefly describe your analytical approach in MySQL
-   **Key finding:** Share one specific, concrete insight from the data
-   **Link:** Include your GitHub repository link
-   **Tags:** #DataAnalytics #SQL #MySQL #ALXAfrica #InsuranceAnalytics #PortfolioProject

Full LinkedIn Guide →',
  'published',
  15,
  now()
),
(
  'da4-001',
  'hospital-executive-performance-dashboard',
  'Hospital Executive Performance Dashboard',
  'DA-4',
  'Power BI',
  'Healthcare',
  'Beginner',
  '8–12 hours',
  array['Data Modelling', 'DAX', 'Dashboard Design', 'Visualisation']::text[],
  array['Power BI']::text[],
  'Design a Power BI dashboard giving hospital leadership a real-time view of patient volumes, bed occupancy, and departmental KPIs.',
  'https://www.kaggle.com/datasets/nehaprabhavalkar/av-healthcare-analytics-ii',
  '## Business Challenge

You have been engaged as a data analyst by a hospital''s executive team. They currently receive performance updates as static monthly PDF reports — by the time leadership sees a problem, weeks have already passed. They want a live dashboard instead.

Your task is to design a Power BI dashboard giving hospital leadership a real-time view of patient volumes, bed occupancy, and departmental KPIs.

## Background

Executive dashboards live or die on clarity — leadership needs to grasp hospital-wide status in seconds, not minutes. This means careful data modelling, well-named DAX measures, and a visual hierarchy that puts the most important numbers first.

This project simulates the kind of executive reporting work a data analyst would do for a hospital''s leadership or quality-improvement team.

## Project Objective

Design a Power BI dashboard giving hospital leadership a real-time view of patient volumes, bed occupancy, and departmental KPIs to support faster operational decisions.

## Learning Objectives

By completing this project you will demonstrate the ability to:

-   Import and model hospital patient/admission data for Power BI reporting
-   Write DAX measures for core hospital KPIs: patient volume, occupancy rate, average length of stay
-   Design a clean, single-glance executive summary page
-   Apply drill-down/filtering so leadership can move from summary to department-level detail
-   Present dashboard findings clearly to a non-technical executive audience

## Dataset Information

| Field | Details |
| --- | --- |
| Dataset Name | Healthcare Analytics Dataset |
| Publisher | Kaggle |
| Description | Anonymised patient records including admission dates, diagnoses, treatments, length of stay, and outcomes across multiple facilities |
| File Format | CSV (import into Power BI via Power Query) |
| Approximate Size | ~25MB |
| Licence | Public — CC0 (check Kaggle page for latest terms) |
| Download Link | [kaggle.com — Healthcare Analytics II ↗](https://www.kaggle.com/datasets/nehaprabhavalkar/av-healthcare-analytics-ii) |
| Access | Free Kaggle account required. Click ''Download'' on the dataset page, then import into Power BI Desktop via Get Data. |
| Known Limitations | Dataset is based on an Indian hospital system. Treat it as representative data for demonstrating Power BI dashboard skills — focus on the modelling and design process, not the geography. |
| Last Verified | July 2026 |

## Project Tasks

### Stage 1 — Data Import & Modelling

-   Import the raw CSV into Power BI using Power Query and clean any obvious data quality issues at the query step
-   Build a simple star-schema data model: fact table for admissions, dimension tables for department, facility, and date
-   Create a proper date table and mark it as the model''s official Date table for time intelligence

### Stage 2 — DAX Measures & Analysis

-   Write DAX measures for: total admissions, average length of stay, bed occupancy rate, and readmission rate
-   Add a period-over-period comparison measure (e.g. month-over-month change in admissions)
-   Validate each measure against a manual spot-check calculation to confirm accuracy

### Stage 3 — Dashboard Design & Reporting

-   Design a three-page dashboard: Page 1 executive summary KPIs, Page 2 department drilldown, Page 3 trend over time
-   Apply consistent, ALX-inspired colours and clear data labels throughout
-   Add slicers for facility and date range so leadership can filter the view themselves

## Expected Deliverables

-   Power BI report file (.pbix) — three-page executive dashboard
-   Short written summary (1 page) of the three most important findings
-   GitHub repository with the .pbix file, dashboard screenshots, and a completed README

## Assessment Rubric

| Criterion | What Good Looks Like | Weight |
| --- | --- | --- |
| Data Modelling | Star schema is correct with well-defined relationships and a proper date table | 20% |
| DAX Measures | Measures return accurate values and are clearly named | 25% |
| Dashboard Design | Clear visual hierarchy, correct chart types, consistent formatting | 25% |
| Interactivity | Slicers and drilldowns work correctly and add real value | 15% |
| Insight Quality | Findings are specific and relevant to executive decision-making | 10% |
| Documentation | README is complete and repository is well-organised | 5% |

## Stretch Challenge

**For learners who want to go further:**

-   Add a forecasting visual projecting admissions for the next 3 months using the built-in analytics pane
-   Build a drill-through page enabling leadership to inspect any single department''s performance in detail
-   Write a reflection on which single KPI you''d choose if the dashboard could only show one number

## Responsible AI Guidance

**You may use AI to:** explain DAX concepts, debug measure syntax errors, check your writing clarity, and brainstorm which visuals best fit a question.

**You may not use AI to:** generate your DAX measures end-to-end, write your analysis, or produce your report for you. Your modelling decisions and interpretations must be your own.

If you use AI assistance significantly at any stage, note it briefly in your README. Employers value honesty about tooling — what matters is that the thinking and judgement are yours.

## Reflection Questions

Include written answers to at least three of these in your README or a separate reflection document:

-   How did you decide which KPIs belonged on the executive summary page versus the drilldown pages?
-   Which DAX measure was the most challenging to get right, and why?
-   What story does your dashboard tell that a static monthly report would not?
-   If you were presenting this to the hospital CEO, what three sentences would you lead with?
-   What limitations of this dataset most affected the quality of your dashboard?

## GitHub Portfolio Guidance

Organise your repository as follows:

~~~text
hospital-executive-performance-dashboard/ ├── data/ │ └── raw/ ← link to source, not the file itself ├── powerbi/ │ └── hospital-executive-performance-dashboard.pbix ├── images/ │ └── dashboard_screenshot.png └── README.md
~~~

Your README should include: project title, business challenge, tools used, dataset source and link, key findings (3 bullet points), and a screenshot of each dashboard page.

Full GitHub Guide →

## LinkedIn Showcase Guidance

When sharing this project on LinkedIn, use this structure:

-   **Hook:** Start with the business problem, not the tools ("A hospital''s leadership team was making decisions off month-old PDF reports…")
-   **What you did:** Briefly describe your analytical approach in Power BI
-   **Key finding:** Share one specific, concrete insight from the data
-   **Link:** Include your GitHub repository link
-   **Tags:** #DataAnalytics #PowerBI #DAX #ALXAfrica #HealthcareAnalytics #PortfolioProject

Full LinkedIn Guide →',
  'published',
  16,
  now()
),
(
  'da4-002',
  'africa-energy-access-dashboard',
  'Africa Energy Access Dashboard',
  'DA-4',
  'Power BI',
  'Energy',
  'Intermediate',
  '10–14 hours',
  array['Power Query', 'DAX', 'Maps', 'Dashboard Design']::text[],
  array['Power BI']::text[],
  'Build an interactive Power BI report visualising electricity access rates, renewable energy capacity, and energy poverty across African nations.',
  'https://data.worldbank.org/indicator/EG.ELC.ACCS.ZS',
  '## Business Challenge

You have been engaged as a data analyst by an energy policy team tracking electricity access and renewable capacity growth across African nations. They need an interactive report that lets analysts explore the data by country and time period, not a static chart pack.

Your task is to build an interactive Power BI report visualising electricity access rates, renewable energy capacity, and energy poverty across African nations.

## Background

Energy access data has a natural geographic dimension that a map visual communicates far better than a table. Combining maps, DAX time intelligence, and clean Power Query transformations is core to building a report that policy analysts will actually want to explore themselves.

This project simulates the kind of policy-support dashboard a data analyst would build for an energy access NGO or ministry analytics team.

## Project Objective

Build an interactive Power BI report visualising electricity access rates, renewable energy capacity, and energy poverty across African nations to support policy analysis.

## Learning Objectives

By completing this project you will demonstrate the ability to:

-   Use Power Query to clean and reshape multi-indicator World Bank data for Power BI
-   Build a data model joining access, capacity, and population indicators by country and year
-   Write DAX measures calculating access rate change and unserved population
-   Design map visuals showing geographic patterns clearly
-   Present energy access findings to a policy-oriented audience

## Dataset Information

| Field | Details |
| --- | --- |
| Dataset Name | Sustainable Energy for All — Access to Electricity |
| Publisher | World Bank |
| Description | Country-level percentage of population with access to electricity, renewable capacity indicators, and population figures across multiple years |
| File Format | CSV / XLSX (import into Power BI via Power Query) |
| Approximate Size | ~2–5MB |
| Licence | Public — CC BY 4.0 (World Bank Open Data) |
| Download Link | [data.worldbank.org — Access to Electricity ↗](https://data.worldbank.org/indicator/EG.ELC.ACCS.ZS) |
| Access | Free, no account required. Download the indicator as CSV directly from the World Bank Data portal, along with population and renewable capacity indicators. |
| Known Limitations | Some countries have gaps in reporting for certain years, and access percentages don''t distinguish grid vs. off-grid or reliability of supply — note this distinction in your report. |
| Last Verified | July 2026 |

## Project Tasks

### Stage 1 — Data Import & Modelling

-   Use Power Query to import and merge the electricity access, population, and renewable capacity tables, filtered to African countries
-   Clean inconsistent country naming across the source tables using Power Query transformations
-   Build a data model with country and date dimension tables linked to the indicator fact table

### Stage 2 — DAX Measures & Analysis

-   Write DAX measures for: access rate, year-over-year change in access rate, and unserved population (using population × (1 − access rate))
-   Add a measure ranking countries by unserved population within the current filter context
-   Validate each measure against a manual spot-check calculation to confirm accuracy

### Stage 3 — Dashboard Design & Reporting

-   Design a report with a map visual showing access rate by country, a ranked bar chart of unserved population, and a trend page
-   Apply consistent, ALX-inspired colours and clear data labels throughout
-   Add slicers for year and region so analysts can explore the data themselves

## Expected Deliverables

-   Power BI report file (.pbix) with map, ranking, and trend visuals
-   Short written summary (1 page) of the three most important findings
-   GitHub repository with the .pbix file, dashboard screenshots, and a completed README

## Assessment Rubric

| Criterion | What Good Looks Like | Weight |
| --- | --- | --- |
| Data Modelling | Tables correctly merged and modelled with clean relationships | 20% |
| DAX Measures | Measures correctly calculate rate, change, and unserved population | 25% |
| Map & Visual Design | Map visual and charts clearly communicate geographic patterns | 25% |
| Interactivity | Slicers work correctly and support genuine exploration | 15% |
| Insight Quality | Findings are specific and policy-relevant | 10% |
| Documentation | README is complete and repository is well-organised | 5% |

## Stretch Challenge

**For learners who want to go further:**

-   Add a scatter visual plotting access rate against renewable capacity to explore any relationship
-   Build a what-if parameter letting users test the effect of a hypothetical percentage-point improvement in access
-   Write a reflection on why percentage-only reporting can mislead policy prioritisation

## Responsible AI Guidance

**You may use AI to:** explain DAX concepts, debug measure syntax errors, check your writing clarity, and brainstorm which visuals best fit a question.

**You may not use AI to:** generate your DAX measures end-to-end, write your analysis, or produce your report for you. Your modelling decisions and interpretations must be your own.

If you use AI assistance significantly at any stage, note it briefly in your README. Employers value honesty about tooling — what matters is that the thinking and judgement are yours.

## Reflection Questions

Include written answers to at least three of these in your README or a separate reflection document:

-   How did you handle countries with missing years in the source data?
-   Which DAX measure was the most challenging to get right, and why?
-   What pattern did the map visual reveal that a table would have hidden?
-   If you were presenting this to a ministry of energy, what three sentences would you lead with?
-   What additional data would most strengthen this report''s policy recommendations?

## GitHub Portfolio Guidance

Organise your repository as follows:

~~~text
africa-energy-access-dashboard/ ├── data/ │ └── raw/ ← link to source, not the file itself ├── powerbi/ │ └── africa-energy-access-dashboard.pbix ├── images/ │ └── dashboard_screenshot.png └── README.md
~~~

Your README should include: project title, business challenge, tools used, dataset source and link, key findings (3 bullet points), and a screenshot of each dashboard page.

Full GitHub Guide →

## LinkedIn Showcase Guidance

When sharing this project on LinkedIn, use this structure:

-   **Hook:** Start with the business problem, not the tools ("A policy team needed to see, not just read, where Africa''s electricity access gap was widest…")
-   **What you did:** Briefly describe your analytical approach in Power BI
-   **Key finding:** Share one specific, concrete insight from the data
-   **Link:** Include your GitHub repository link
-   **Tags:** #DataAnalytics #PowerBI #DAX #ALXAfrica #EnergyAccess #PortfolioProject

Full LinkedIn Guide →',
  'published',
  17,
  now()
),
(
  'da4-003',
  'sales-performance-and-territory-dashboard',
  'Sales Performance & Territory Dashboard',
  'DA-4',
  'Power BI',
  'Retail & E-commerce',
  'Beginner',
  '8–12 hours',
  array['Data Modelling', 'DAX', 'Dashboard Design', 'Data Storytelling']::text[],
  array['Power BI']::text[],
  'Create a regional sales dashboard in Power BI to help a retail company track revenue against targets, monitor top products, and identify underperforming territories.',
  'https://www.kaggle.com/datasets/vivek468/superstore-dataset-final',
  '## Business Challenge

You have been engaged as a data analyst by a retail company''s sales operations team. Regional managers currently track performance against targets manually in spreadsheets, with no consistent, comparable view across territories.

Your task is to create a regional sales dashboard in Power BI to help the company track revenue against targets, monitor top products, and identify underperforming territories.

## Background

Sales performance dashboards are one of the most common real-world Power BI use cases — the core skill is building a data model that supports fast, correct DAX measures for revenue, targets, and variance, then presenting them in a way regional managers can act on immediately.

This project simulates the kind of sales operations dashboard a data analyst would build for a retail or FMCG company''s commercial team.

## Project Objective

Create a regional sales dashboard in Power BI to help a retail company track revenue against targets, monitor top products, and identify underperforming territories.

## Learning Objectives

By completing this project you will demonstrate the ability to:

-   Import and model sales transaction data for Power BI reporting
-   Write DAX measures for revenue, target variance, and top-product ranking
-   Design a dashboard that surfaces underperformance clearly, not just totals
-   Use data storytelling principles to guide visual hierarchy and layout
-   Present territory-level findings to a sales operations audience

## Dataset Information

| Field | Details |
| --- | --- |
| Dataset Name | Superstore Sales Dataset |
| Publisher | Kaggle |
| Description | Retail order-level transaction data including product category, region, sales amount, profit, and order date |
| File Format | CSV / XLSX (import into Power BI via Power Query) |
| Approximate Size | ~2MB |
| Licence | Public — check Kaggle page for latest terms |
| Download Link | [kaggle.com — Superstore Sales ↗](https://www.kaggle.com/datasets/vivek468/superstore-dataset-final) |
| Access | Free Kaggle account required. Click ''Download'' on the dataset page, then import into Power BI Desktop via Get Data. |
| Known Limitations | Dataset does not include explicit sales targets — you will need to create reasonable target assumptions (e.g. a fixed growth percentage over prior period) and state them clearly in your README. |
| Last Verified | July 2026 |

## Project Tasks

### Stage 1 — Data Import & Modelling

-   Import the raw sales CSV into Power BI using Power Query and clean date, region, and category fields
-   Build a data model with a proper date table and region/product dimension tables
-   Define a simple, clearly-documented target assumption to use as your comparison baseline

### Stage 2 — DAX Measures & Analysis

-   Write DAX measures for: total revenue, revenue vs. target variance, and top-product ranking by region
-   Add a period-over-period growth measure using time intelligence functions
-   Validate each measure against a manual spot-check calculation to confirm accuracy

### Stage 3 — Dashboard Design & Reporting

-   Design a dashboard with a regional performance overview, a top-products page, and a variance-to-target view
-   Apply consistent, ALX-inspired colours and clear data labels throughout
-   Use conditional formatting or colour-coding to flag underperforming territories at a glance

## Expected Deliverables

-   Power BI report file (.pbix) with regional overview, product, and variance pages
-   Short written summary (1 page) of the three most important findings
-   GitHub repository with the .pbix file, dashboard screenshots, and a completed README

## Assessment Rubric

| Criterion | What Good Looks Like | Weight |
| --- | --- | --- |
| Data Modelling | Clean relationships and a properly configured date table | 20% |
| DAX Measures | Measures correctly calculate revenue, variance, and growth | 25% |
| Dashboard Design | Clear hierarchy, correct chart types, consistent formatting | 25% |
| Underperformance Flagging | Dashboard clearly and correctly surfaces underperforming territories | 15% |
| Insight Quality | Findings are specific and useful for sales operations decisions | 10% |
| Documentation | README is complete, target assumptions clearly stated | 5% |

## Stretch Challenge

**For learners who want to go further:**

-   Add a what-if parameter letting users test different target growth assumptions
-   Build a drill-through page enabling a regional manager to inspect any single territory''s product mix
-   Write a reflection on how a real target-setting process would differ from your assumption-based approach

## Responsible AI Guidance

**You may use AI to:** explain DAX concepts, debug measure syntax errors, check your writing clarity, and brainstorm which visuals best fit a question.

**You may not use AI to:** generate your DAX measures end-to-end, write your analysis, or produce your report for you. Your modelling decisions and interpretations must be your own.

If you use AI assistance significantly at any stage, note it briefly in your README. Employers value honesty about tooling — what matters is that the thinking and judgement are yours.

## Reflection Questions

Include written answers to at least three of these in your README or a separate reflection document:

-   What target assumption did you use, and how might a different assumption change your findings?
-   Which DAX measure was the most challenging to get right, and why?
-   Which territory''s performance most surprised you, and why?
-   If you were presenting this to the sales operations team, what three sentences would you lead with?
-   What additional data (e.g. actual targets, headcount) would most improve this dashboard?

## GitHub Portfolio Guidance

Organise your repository as follows:

~~~text
sales-performance-territory-dashboard/ ├── data/ │ └── raw/ ← link to source, not the file itself ├── powerbi/ │ └── sales-performance-territory-dashboard.pbix ├── images/ │ └── dashboard_screenshot.png └── README.md
~~~

Your README should include: project title, business challenge, tools used, dataset source and link, key findings (3 bullet points), and a screenshot of each dashboard page.

Full GitHub Guide →

## LinkedIn Showcase Guidance

When sharing this project on LinkedIn, use this structure:

-   **Hook:** Start with the business problem, not the tools ("A retail company''s regional managers were tracking targets in spreadsheets that never quite agreed with each other…")
-   **What you did:** Briefly describe your analytical approach in Power BI
-   **Key finding:** Share one specific, concrete insight from the data
-   **Link:** Include your GitHub repository link
-   **Tags:** #DataAnalytics #PowerBI #DAX #ALXAfrica #SalesAnalytics #PortfolioProject

Full LinkedIn Guide →',
  'published',
  18,
  now()
),
(
  'da4-004',
  'hr-workforce-and-attrition-analytics',
  'HR Workforce & Attrition Analytics',
  'DA-4',
  'Power BI',
  'Human Resources',
  'Intermediate',
  '10–14 hours',
  array['Power Query', 'DAX', 'Dashboard Design', 'Data Modelling']::text[],
  array['Power BI']::text[],
  'Build a Power BI report for an HR team that tracks headcount, attrition rates by department, and workforce diversity metrics.',
  'https://www.kaggle.com/datasets/pavansubhasht/ibm-hr-analytics-attrition-dataset',
  '## Business Challenge

You have been engaged as a data analyst by a company''s HR team. Leadership wants a self-service dashboard tracking headcount, attrition, and workforce diversity — something the HR team can update and explore themselves, not a one-off report.

Your task is to build a Power BI report for an HR team that tracks headcount, attrition rates by department, and workforce diversity metrics.

## Background

HR dashboards require careful, responsible treatment of sensitive data — diversity metrics must be presented accurately without implying causation the data can''t support. This makes the modelling and DAX work as much about judgement as technical correctness.

This project simulates the kind of people-analytics dashboard a data analyst would build for an HR or people operations team.

## Project Objective

Build a Power BI report for an HR team that tracks headcount, attrition rates by department, and workforce diversity metrics, presented responsibly and accurately.

## Learning Objectives

By completing this project you will demonstrate the ability to:

-   Use Power Query to clean and structure HR records containing sensitive demographic fields
-   Build a data model relating employee records to department and time dimensions
-   Write DAX measures for headcount, attrition rate, and diversity ratios
-   Design a dashboard that presents workforce data accurately and responsibly
-   Present HR analytics findings clearly to a people operations audience

## Dataset Information

| Field | Details |
| --- | --- |
| Dataset Name | IBM HR Analytics Employee Attrition & Performance |
| Publisher | Kaggle (IBM-published sample dataset) |
| Description | Employee-level records including department, job role, tenure, satisfaction scores, compensation band, demographic fields, and attrition status |
| File Format | CSV (import into Power BI via Power Query) |
| Approximate Size | ~250KB |
| Licence | Public — check Kaggle page for latest terms |
| Download Link | [kaggle.com — IBM HR Analytics ↗](https://www.kaggle.com/datasets/pavansubhasht/ibm-hr-analytics-attrition-dataset) |
| Access | Free Kaggle account required. Click ''Download'' on the dataset page, then import into Power BI Desktop via Get Data. |
| Known Limitations | This is a synthetic/sample dataset IBM published for analytics training purposes, not real employee data. Treat findings as illustrative of methodology, and say so clearly in your report — never present synthetic findings as representing a real company''s workforce. |
| Last Verified | July 2026 |

## Project Tasks

### Stage 1 — Data Import & Modelling

-   Import the employee CSV into Power BI using Power Query and clean category and demographic fields
-   Build a data model with department and tenure-band dimension tables
-   Document all cleaning decisions, especially around any sensitive demographic fields

### Stage 2 — DAX Measures & Analysis

-   Write DAX measures for: headcount, attrition rate by department, and diversity ratio by department
-   Add a measure calculating attrition rate by tenure band to spot early-tenure risk
-   Validate each measure against a manual spot-check calculation to confirm accuracy

### Stage 3 — Dashboard Design & Reporting

-   Design a dashboard with a workforce overview page, an attrition drilldown by department, and a diversity summary
-   Apply consistent, ALX-inspired colours and clear data labels throughout
-   Write report annotations that clearly separate strong findings from speculative ones

## Expected Deliverables

-   Power BI report file (.pbix) with overview, attrition, and diversity pages
-   Short written summary (1 page) of the three most important findings
-   GitHub repository with the .pbix file, dashboard screenshots, and a completed README

## Assessment Rubric

| Criterion | What Good Looks Like | Weight |
| --- | --- | --- |
| Data Modelling | Clean relationships between employee, department, and tenure dimensions | 20% |
| DAX Measures | Measures correctly calculate headcount, attrition, and diversity ratios | 25% |
| Dashboard Design | Clear hierarchy, correct chart types, consistent formatting | 20% |
| Analytical Rigour | Distinguishes association from causation; avoids overreaching claims | 20% |
| Insight Quality | Findings are specific and responsibly framed | 10% |
| Documentation | README is complete and repository is well-organised | 5% |

## Stretch Challenge

**For learners who want to go further:**

-   Add a measure identifying the department and tenure-band combination with the highest compounded attrition risk
-   Build a drill-through page enabling HR to inspect any single department''s full workforce profile
-   Write a reflection on the ethical considerations of visualising demographic data in an HR dashboard

## Responsible AI Guidance

**You may use AI to:** explain DAX concepts, debug measure syntax errors, check your writing clarity, and brainstorm which visuals best fit a question.

**You may not use AI to:** generate your DAX measures end-to-end, write your analysis, or produce your report for you. Your modelling decisions and interpretations must be your own.

If you use AI assistance significantly at any stage, note it briefly in your README. Employers value honesty about tooling — what matters is that the thinking and judgement are yours.

## Reflection Questions

Include written answers to at least three of these in your README or a separate reflection document:

-   How did you avoid overstating correlation as causation in your attrition findings?
-   Which DAX measure was the most challenging to get right, and why?
-   Which finding most surprised you, and why?
-   If you were presenting this to the HR leadership team, what three sentences would you lead with?
-   What ethical considerations did you keep in mind when designing the diversity visuals?

## GitHub Portfolio Guidance

Organise your repository as follows:

~~~text
hr-workforce-attrition-analytics/ ├── data/ │ └── raw/ ← link to source, not the file itself ├── powerbi/ │ └── hr-workforce-attrition-analytics.pbix ├── images/ │ └── dashboard_screenshot.png └── README.md
~~~

Your README should include: project title, business challenge, tools used, dataset source and link, key findings (3 bullet points), and a screenshot of each dashboard page.

Full GitHub Guide →

## LinkedIn Showcase Guidance

When sharing this project on LinkedIn, use this structure:

-   **Hook:** Start with the business problem, not the tools ("An HR team wanted a dashboard they could actually update themselves — not another one-off attrition report…")
-   **What you did:** Briefly describe your analytical approach in Power BI
-   **Key finding:** Share one specific, concrete insight from the data
-   **Link:** Include your GitHub repository link
-   **Tags:** #DataAnalytics #PowerBI #DAX #ALXAfrica #PeopleAnalytics #PortfolioProject

Full LinkedIn Guide →',
  'published',
  19,
  now()
),
(
  'da4-005',
  'climate-and-carbon-emissions-tracker',
  'Climate & Carbon Emissions Tracker',
  'DA-4',
  'Power BI',
  'Climate & Sustainability',
  'Advanced',
  '12–18 hours',
  array['Power Query', 'DAX', 'Maps', 'Data Storytelling', 'Dashboard Design']::text[],
  array['Power BI']::text[],
  'Visualise global CO₂ emissions, temperature anomalies, and deforestation trends in a Power BI report that supports climate policy briefings.',
  'https://ourworldindata.org/co2-emissions',
  '## Business Challenge

You have been engaged as a data analyst by a climate policy research team preparing briefing materials for policymakers. They need a report visualising global CO₂ emissions, temperature anomalies, and deforestation trends that can support a live briefing, not just static charts in a slide deck.

Your task is to visualise global CO₂ emissions, temperature anomalies, and deforestation trends in a Power BI report that supports climate policy briefings.

## Background

Climate data spans decades and dozens of interrelated indicators — building a report that lets a policy audience explore emissions by country, sector, and time period without becoming overwhelming requires careful use of maps, time intelligence DAX, and thoughtful data storytelling.

This project simulates the kind of climate briefing dashboard a data analyst would build for a research institute, think tank, or government climate unit.

## Project Objective

Visualise global CO₂ emissions, temperature anomalies, and deforestation trends in a Power BI report that supports climate policy briefings.

## Learning Objectives

By completing this project you will demonstrate the ability to:

-   Use Power Query to clean and reshape multi-decade, multi-indicator climate data
-   Build a data model relating emissions, temperature, and country-level indicators over time
-   Write DAX time intelligence measures for cumulative emissions and multi-year trend comparisons
-   Design map and trend visuals suited to a policy-briefing audience
-   Communicate complex climate data clearly to a non-technical policy audience

## Dataset Information

| Field | Details |
| --- | --- |
| Dataset Name | CO₂ and Greenhouse Gas Emissions Dataset |
| Publisher | Our World in Data |
| Description | Country-level annual CO₂ emissions, emissions per capita, and related climate indicators spanning multiple decades |
| File Format | CSV (import into Power BI via Power Query) |
| Approximate Size | ~5–15MB |
| Licence | Public — CC BY 4.0 |
| Download Link | [ourworldindata.org — CO₂ Emissions ↗](https://ourworldindata.org/co2-emissions) |
| Access | Free, no account required. Download the CO₂ emissions dataset directly from the Our World in Data GitHub repository linked on the page. |
| Known Limitations | Reporting completeness and methodology can vary by country and over time — note any significant data gaps you encounter and how you handled them. |
| Last Verified | July 2026 |

## Project Tasks

### Stage 1 — Data Import & Modelling

-   Use Power Query to import and clean the multi-decade emissions dataset, filtering to a representative set of countries
-   Build a data model with a proper date table enabling year-over-year and multi-year comparisons
-   Handle missing years for individual countries transparently rather than silently interpolating

### Stage 2 — DAX Measures & Analysis

-   Write DAX measures for: total emissions, emissions per capita, and cumulative emissions over a selected period
-   Add a time intelligence measure comparing emissions trend across two comparable time windows (e.g. this decade vs. last)
-   Validate each measure against a manual spot-check calculation to confirm accuracy

### Stage 3 — Dashboard Design & Reporting

-   Design a report with a global map of emissions per capita, a top-emitters ranking, and a multi-decade trend page
-   Apply consistent, ALX-inspired colours and clear data labels throughout
-   Add slicers for country and year range so a policy analyst can explore the data during a live briefing

## Expected Deliverables

-   Power BI report file (.pbix) with map, ranking, and trend pages
-   Short written summary (1 page) of the three most important findings
-   GitHub repository with the .pbix file, dashboard screenshots, and a completed README

## Assessment Rubric

| Criterion | What Good Looks Like | Weight |
| --- | --- | --- |
| Data Modelling | Clean relationships and a properly configured date table supporting time intelligence | 20% |
| DAX Measures | Time intelligence measures are correct and clearly named | 25% |
| Map & Visual Design | Map and trend visuals clearly communicate patterns to a policy audience | 25% |
| Interactivity | Slicers support genuine exploration during a live briefing | 15% |
| Insight Quality | Findings are specific, accurate, and policy-relevant | 10% |
| Documentation | README is complete and repository is well-organised | 5% |

## Stretch Challenge

**For learners who want to go further:**

-   Add a per-capita vs. total-emissions scatter visual to distinguish high-population from high-intensity emitters
-   Build a what-if parameter modelling a hypothetical percentage emissions reduction target
-   Write a reflection on the difference between historical responsibility and current-year emissions in policy framing

## Responsible AI Guidance

**You may use AI to:** explain DAX concepts, debug measure syntax errors, check your writing clarity, and brainstorm which visuals best fit a question.

**You may not use AI to:** generate your DAX measures end-to-end, write your analysis, or produce your report for you. Your modelling decisions and interpretations must be your own.

If you use AI assistance significantly at any stage, note it briefly in your README. Employers value honesty about tooling — what matters is that the thinking and judgement are yours.

## Reflection Questions

Include written answers to at least three of these in your README or a separate reflection document:

-   How did you handle countries with significant gaps in their emissions time series?
-   Which DAX measure was the most challenging to get right, and why?
-   What pattern did the map visual reveal that a table would have hidden?
-   If you were briefing a policymaker, what three sentences would you lead with?
-   What additional data would most strengthen this report''s policy relevance?

## GitHub Portfolio Guidance

Organise your repository as follows:

~~~text
climate-carbon-emissions-tracker/ ├── data/ │ └── raw/ ← link to source, not the file itself ├── powerbi/ │ └── climate-carbon-emissions-tracker.pbix ├── images/ │ └── dashboard_screenshot.png └── README.md
~~~

Your README should include: project title, business challenge, tools used, dataset source and link, key findings (3 bullet points), and a screenshot of each dashboard page.

Full GitHub Guide →

## LinkedIn Showcase Guidance

When sharing this project on LinkedIn, use this structure:

-   **Hook:** Start with the business problem, not the tools ("A climate policy team needed a briefing tool they could explore live, not a slide deck frozen in time…")
-   **What you did:** Briefly describe your analytical approach in Power BI
-   **Key finding:** Share one specific, concrete insight from the data
-   **Link:** Include your GitHub repository link
-   **Tags:** #DataAnalytics #PowerBI #DAX #ALXAfrica #ClimateData #PortfolioProject

Full LinkedIn Guide →',
  'published',
  20,
  now()
),
(
  'da4-006',
  'telecommunications-kpi-dashboard',
  'Telecommunications KPI Dashboard',
  'DA-4',
  'Power BI',
  'Telecommunications',
  'Intermediate',
  '10–14 hours',
  array['Data Modelling', 'DAX', 'Dashboard Design', 'Visualisation']::text[],
  array['Power BI']::text[],
  'Design a Power BI executive dashboard tracking subscriber growth, churn rates, revenue per user, and network performance for a telecoms company.',
  'https://www.kaggle.com/datasets/blastchar/telco-customer-churn',
  '## Business Challenge

You have been engaged as a data analyst by a telecom operator''s executive team. They need a single dashboard tracking subscriber growth, churn, revenue per user, and network performance — the core KPIs that currently live in four different spreadsheets maintained by four different teams.

Your task is to design a Power BI executive dashboard tracking subscriber growth, churn rates, revenue per user, and network performance for a telecoms company.

## Background

Telecom KPI reporting is a classic case where fragmented data sources cause fragmented decision-making. Bringing subscriber, revenue, and churn data into a single modelled dataset with consistent DAX definitions is most of the value a data analyst adds here.

This project simulates the kind of unified executive dashboard a data analyst would build for a telecom operator''s strategy or commercial team.

## Project Objective

Design a Power BI executive dashboard tracking subscriber growth, churn rates, revenue per user, and network performance for a telecoms company.

## Learning Objectives

By completing this project you will demonstrate the ability to:

-   Import and model telecom subscriber data for Power BI reporting
-   Write DAX measures for subscriber growth, churn rate, and average revenue per user (ARPU)
-   Design a unified executive dashboard consolidating multiple KPI domains
-   Apply clear visual hierarchy so the most critical KPIs are immediately visible
-   Present telecom performance findings to an executive audience

## Dataset Information

| Field | Details |
| --- | --- |
| Dataset Name | Telco Customer Churn Dataset |
| Publisher | Kaggle (IBM sample dataset) |
| Description | Subscriber-level records including account tenure, service subscriptions, monthly charges, contract type, and churn status |
| File Format | CSV (import into Power BI via Power Query) |
| Approximate Size | ~1MB |
| Licence | Public — check Kaggle page for latest terms |
| Download Link | [kaggle.com — Telco Customer Churn ↗](https://www.kaggle.com/datasets/blastchar/telco-customer-churn) |
| Access | Free Kaggle account required. Click ''Download'' on the dataset page, then import into Power BI Desktop via Get Data. |
| Known Limitations | This is a sample dataset published for analytics training, not a real operator''s live subscriber base, and does not include network performance data — you will need to note this scope limitation and focus your ''network performance'' framing on service-subscription patterns available in the data. |
| Last Verified | July 2026 |

## Project Tasks

### Stage 1 — Data Import & Modelling

-   Import the subscriber CSV into Power BI using Power Query and clean categorical fields
-   Build a data model with contract-type and service-subscription dimension tables
-   Document any scope assumptions, especially around the network performance framing given the dataset''s limitations

### Stage 2 — DAX Measures & Analysis

-   Write DAX measures for: subscriber count, churn rate, and average monthly charges (as an ARPU proxy)
-   Add a measure comparing churn rate across contract types and service combinations
-   Validate each measure against a manual spot-check calculation to confirm accuracy

### Stage 3 — Dashboard Design & Reporting

-   Design an executive dashboard with a KPI summary page and a churn/ARPU drilldown page
-   Apply consistent, ALX-inspired colours and clear data labels throughout
-   Add slicers for contract type and service subscriptions so executives can filter the view themselves

## Expected Deliverables

-   Power BI report file (.pbix) with executive summary and drilldown pages
-   Short written summary (1 page) of the three most important findings
-   GitHub repository with the .pbix file, dashboard screenshots, and a completed README

## Assessment Rubric

| Criterion | What Good Looks Like | Weight |
| --- | --- | --- |
| Data Modelling | Clean relationships between subscriber, contract, and service dimensions | 20% |
| DAX Measures | Measures correctly calculate churn rate and ARPU proxy | 25% |
| Dashboard Design | Clear hierarchy, correct chart types, consistent formatting | 25% |
| Interactivity | Slicers work correctly and support genuine exploration | 15% |
| Insight Quality | Findings are specific and relevant to executive decision-making | 10% |
| Documentation | README is complete, scope assumptions clearly stated | 5% |

## Stretch Challenge

**For learners who want to go further:**

-   Add a measure ranking service-subscription combinations by churn risk
-   Build a drill-through page enabling an executive to inspect any single contract type''s full subscriber profile
-   Write a reflection on what real network performance data (e.g. dropped calls, latency) would add to this dashboard

## Responsible AI Guidance

**You may use AI to:** explain DAX concepts, debug measure syntax errors, check your writing clarity, and brainstorm which visuals best fit a question.

**You may not use AI to:** generate your DAX measures end-to-end, write your analysis, or produce your report for you. Your modelling decisions and interpretations must be your own.

If you use AI assistance significantly at any stage, note it briefly in your README. Employers value honesty about tooling — what matters is that the thinking and judgement are yours.

## Reflection Questions

Include written answers to at least three of these in your README or a separate reflection document:

-   How did you handle the gap between this dataset and true ''network performance'' data?
-   Which DAX measure was the most challenging to get right, and why?
-   Which finding most surprised you, and why?
-   If you were presenting this to the telecom''s executive team, what three sentences would you lead with?
-   What additional data would most strengthen this dashboard''s executive value?

## GitHub Portfolio Guidance

Organise your repository as follows:

~~~text
telecommunications-kpi-dashboard/ ├── data/ │ └── raw/ ← link to source, not the file itself ├── powerbi/ │ └── telecommunications-kpi-dashboard.pbix ├── images/ │ └── dashboard_screenshot.png └── README.md
~~~

Your README should include: project title, business challenge, tools used, dataset source and link, key findings (3 bullet points), and a screenshot of each dashboard page.

Full GitHub Guide →

## LinkedIn Showcase Guidance

When sharing this project on LinkedIn, use this structure:

-   **Hook:** Start with the business problem, not the tools ("A telecom operator''s core KPIs lived in four different spreadsheets that never quite matched…")
-   **What you did:** Briefly describe your analytical approach in Power BI
-   **Key finding:** Share one specific, concrete insight from the data
-   **Link:** Include your GitHub repository link
-   **Tags:** #DataAnalytics #PowerBI #DAX #ALXAfrica #TelecomAnalytics #PortfolioProject

Full LinkedIn Guide →',
  'published',
  21,
  now()
),
(
  'da4-007',
  'agricultural-commodity-price-monitor',
  'Agricultural Commodity Price Monitor',
  'DA-4',
  'Power BI',
  'Agriculture & Food Systems',
  'Intermediate',
  '10–14 hours',
  array['Power Query', 'DAX', 'Time Intelligence', 'Dashboard Design']::text[],
  array['Power BI']::text[],
  'Build a Power BI report tracking price volatility of key African agricultural commodities, helping traders and policymakers monitor market movements.',
  'https://www.fao.org/faostat/en/#data/PP',
  '## Business Challenge

You have been engaged as a data analyst by an agricultural trading desk that needs to monitor price volatility of key African commodities. Traders currently check prices manually across multiple sources — they want one report with time-intelligence built in.

Your task is to build a Power BI report tracking price volatility of key African agricultural commodities, helping traders and policymakers monitor market movements.

## Background

Commodity price monitoring is a natural fit for Power BI''s time intelligence DAX functions — traders think in terms of price versus last month, versus last year, and versus a rolling average. Getting these comparisons technically correct (and fast) is the core skill this project builds.

This project simulates the kind of market monitoring dashboard a data analyst would build for a trading desk or agricultural policy unit.

## Project Objective

Build a Power BI report tracking price volatility of key African agricultural commodities, helping traders and policymakers monitor market movements.

## Learning Objectives

By completing this project you will demonstrate the ability to:

-   Use Power Query to clean and reshape multi-commodity, multi-year price data
-   Build a data model with a proper date table supporting time intelligence functions
-   Write DAX time intelligence measures for month-over-month and year-over-year price change
-   Design volatility visuals that highlight meaningful price movements, not noise
-   Present commodity price findings clearly to a trading/policy audience

## Dataset Information

| Field | Details |
| --- | --- |
| Dataset Name | FAOSTAT — Producer Prices |
| Publisher | Food and Agriculture Organization of the United Nations (FAO) |
| Description | Country-level producer price data for major agricultural commodities across multiple years |
| File Format | CSV (import into Power BI via Power Query) |
| Approximate Size | ~5–15MB depending on commodity/country selection |
| Licence | Public — CC BY 4.0 |
| Download Link | [fao.org — FAOSTAT Producer Prices ↗](https://www.fao.org/faostat/en/#data/PP) |
| Access | Free, no account required. Use the FAOSTAT query tool to filter by African countries and key commodities, then export as CSV. |
| Known Limitations | Producer price data is annual, not daily, so ''volatility'' here means year-over-year and multi-year variation rather than trading-floor-level volatility — be explicit about this distinction in your report. |
| Last Verified | July 2026 |

## Project Tasks

### Stage 1 — Data Import & Modelling

-   Use Power Query to import and clean price data for a representative set of African countries and commodities
-   Build a data model with a proper date table and commodity/country dimension tables
-   Handle missing years transparently and document how you did so

### Stage 2 — DAX Measures & Analysis

-   Write DAX time intelligence measures for: year-over-year price change and multi-year moving average
-   Add a volatility measure calculating the standard deviation of price over a rolling window
-   Validate each measure against a manual spot-check calculation to confirm accuracy

### Stage 3 — Dashboard Design & Reporting

-   Design a report with a commodity price trend page, a volatility ranking, and a country comparison view
-   Apply consistent, ALX-inspired colours and clear data labels throughout
-   Add slicers for commodity and country so traders/policymakers can explore the data themselves

## Expected Deliverables

-   Power BI report file (.pbix) with trend, volatility, and comparison pages
-   Short written summary (1 page) of the three most important findings
-   GitHub repository with the .pbix file, dashboard screenshots, and a completed README

## Assessment Rubric

| Criterion | What Good Looks Like | Weight |
| --- | --- | --- |
| Data Modelling | Clean relationships and a properly configured date table supporting time intelligence | 20% |
| DAX Measures | Time intelligence and volatility measures are correct and clearly named | 25% |
| Dashboard Design | Clear hierarchy, correct chart types, consistent formatting | 25% |
| Interactivity | Slicers support genuine exploration by commodity and country | 15% |
| Insight Quality | Findings are specific and relevant to trading/policy decisions | 10% |
| Documentation | README is complete, volatility definition clearly stated | 5% |

## Stretch Challenge

**For learners who want to go further:**

-   Add a measure ranking commodities by year-over-year price change to spot the fastest-moving markets
-   Build a drill-through page enabling a trader to inspect any single commodity''s full multi-year history
-   Write a reflection on how daily/weekly trading data would change this analysis if it were available

## Responsible AI Guidance

**You may use AI to:** explain DAX concepts, debug measure syntax errors, check your writing clarity, and brainstorm which visuals best fit a question.

**You may not use AI to:** generate your DAX measures end-to-end, write your analysis, or produce your report for you. Your modelling decisions and interpretations must be your own.

If you use AI assistance significantly at any stage, note it briefly in your README. Employers value honesty about tooling — what matters is that the thinking and judgement are yours.

## Reflection Questions

Include written answers to at least three of these in your README or a separate reflection document:

-   How did you handle commodities or countries with significant gaps in their price history?
-   Which DAX measure was the most challenging to get right, and why?
-   Which commodity''s price pattern most surprised you, and why?
-   If you were presenting this to a trading desk, what three sentences would you lead with?
-   What additional data (e.g. weather, trade volumes) would most strengthen this report?

## GitHub Portfolio Guidance

Organise your repository as follows:

~~~text
agricultural-commodity-price-monitor/ ├── data/ │ └── raw/ ← link to source, not the file itself ├── powerbi/ │ └── agricultural-commodity-price-monitor.pbix ├── images/ │ └── dashboard_screenshot.png └── README.md
~~~

Your README should include: project title, business challenge, tools used, dataset source and link, key findings (3 bullet points), and a screenshot of each dashboard page.

Full GitHub Guide →

## LinkedIn Showcase Guidance

When sharing this project on LinkedIn, use this structure:

-   **Hook:** Start with the business problem, not the tools ("A trading desk was checking commodity prices across five different spreadsheets before every call…")
-   **What you did:** Briefly describe your analytical approach in Power BI
-   **Key finding:** Share one specific, concrete insight from the data
-   **Link:** Include your GitHub repository link
-   **Tags:** #DataAnalytics #PowerBI #DAX #ALXAfrica #AgriculturalAnalytics #PortfolioProject

Full LinkedIn Guide →',
  'published',
  22,
  now()
),
(
  'da4-008',
  'education-outcomes-and-learning-poverty-report',
  'Education Outcomes & Learning Poverty Report',
  'DA-4',
  'Power BI',
  'Education',
  'Beginner',
  '8–12 hours',
  array['Data Modelling', 'DAX', 'Maps', 'Visualisation']::text[],
  array['Power BI']::text[],
  'Design a World Bank education dashboard showing literacy rates, learning poverty indicators, and school enrollment trends across African nations.',
  'https://data.worldbank.org/topic/education',
  '## Business Challenge

You have been engaged as a data analyst by an education policy team preparing a report on literacy and learning poverty trends across African nations. They need a report leadership can explore country-by-country, not a fixed set of static charts.

Your task is to design a World Bank education dashboard showing literacy rates, learning poverty indicators, and school enrollment trends across African nations.

## Background

''Learning poverty'' — the share of children unable to read a simple text by age 10 — has become a key education policy indicator. Combining it with literacy and enrollment data in a single, well-modelled Power BI report lets a policy team compare countries fairly and quickly.

This project simulates the kind of policy dashboard a data analyst would build for an education ministry or education-focused NGO.

## Project Objective

Design a World Bank education dashboard showing literacy rates, learning poverty indicators, and school enrollment trends across African nations to support education policy analysis.

## Learning Objectives

By completing this project you will demonstrate the ability to:

-   Use Power Query to clean and merge multiple World Bank education indicators
-   Build a data model relating literacy, learning poverty, and enrollment data by country and year
-   Write DAX measures comparing countries against regional averages
-   Design map and comparison visuals suited to a policy audience
-   Present education outcome findings clearly to a non-technical policy audience

## Dataset Information

| Field | Details |
| --- | --- |
| Dataset Name | World Bank Education Statistics (EdStats) |
| Publisher | World Bank |
| Description | Country-level indicators covering literacy rates, learning poverty, and school enrollment across multiple education levels and years |
| File Format | CSV / XLSX (import into Power BI via Power Query) |
| Approximate Size | ~5–15MB depending on indicator selection |
| Licence | Public — CC BY 4.0 (World Bank Open Data) |
| Download Link | [data.worldbank.org — Education Statistics ↗](https://data.worldbank.org/topic/education) |
| Access | Free, no account required. Download the relevant indicators (literacy rate, learning poverty, enrollment) as CSV directly from the World Bank Data portal. |
| Known Limitations | Not all countries report every indicator for every year — some gaps are expected, particularly for the newer learning poverty indicator. Document how you handled missing values. |
| Last Verified | July 2026 |

## Project Tasks

### Stage 1 — Data Import & Modelling

-   Use Power Query to import and merge literacy, learning poverty, and enrollment indicators, filtered to African countries
-   Clean inconsistent country naming across the source tables using Power Query transformations
-   Build a data model with country and date dimension tables linked to the indicator fact table

### Stage 2 — DAX Measures & Analysis

-   Write DAX measures for: literacy rate, learning poverty rate, and each country''s deviation from the regional average
-   Add a measure ranking countries by learning poverty rate within the current filter context
-   Validate each measure against a manual spot-check calculation to confirm accuracy

### Stage 3 — Dashboard Design & Reporting

-   Design a report with a map visual showing learning poverty by country, a ranked comparison chart, and an enrollment trend page
-   Apply consistent, ALX-inspired colours and clear data labels throughout
-   Add slicers for year and education level so analysts can explore the data themselves

## Expected Deliverables

-   Power BI report file (.pbix) with map, ranking, and trend pages
-   Short written summary (1 page) of the three most important findings
-   GitHub repository with the .pbix file, dashboard screenshots, and a completed README

## Assessment Rubric

| Criterion | What Good Looks Like | Weight |
| --- | --- | --- |
| Data Modelling | Tables correctly merged and modelled with clean relationships | 20% |
| DAX Measures | Measures correctly calculate rates and regional deviation | 25% |
| Map & Visual Design | Map visual and charts clearly communicate country-level patterns | 25% |
| Interactivity | Slicers work correctly and support genuine exploration | 15% |
| Insight Quality | Findings are specific and policy-relevant | 10% |
| Documentation | README is complete and repository is well-organised | 5% |

## Stretch Challenge

**For learners who want to go further:**

-   Add a scatter visual plotting learning poverty against enrollment rate to explore any relationship
-   Build a drill-through page enabling a policy analyst to inspect any single country''s full indicator profile
-   Write a reflection on why enrollment alone is an incomplete measure of education system performance

## Responsible AI Guidance

**You may use AI to:** explain DAX concepts, debug measure syntax errors, check your writing clarity, and brainstorm which visuals best fit a question.

**You may not use AI to:** generate your DAX measures end-to-end, write your analysis, or produce your report for you. Your modelling decisions and interpretations must be your own.

If you use AI assistance significantly at any stage, note it briefly in your README. Employers value honesty about tooling — what matters is that the thinking and judgement are yours.

## Reflection Questions

Include written answers to at least three of these in your README or a separate reflection document:

-   How did you handle countries with missing learning poverty data?
-   Which DAX measure was the most challenging to get right, and why?
-   What pattern did the map visual reveal that a table would have hidden?
-   If you were presenting this to an education ministry, what three sentences would you lead with?
-   What additional data would most strengthen this report''s policy relevance?

## GitHub Portfolio Guidance

Organise your repository as follows:

~~~text
education-outcomes-learning-poverty-report/ ├── data/ │ └── raw/ ← link to source, not the file itself ├── powerbi/ │ └── education-outcomes-learning-poverty-report.pbix ├── images/ │ └── dashboard_screenshot.png └── README.md
~~~

Your README should include: project title, business challenge, tools used, dataset source and link, key findings (3 bullet points), and a screenshot of each dashboard page.

Full GitHub Guide →

## LinkedIn Showcase Guidance

When sharing this project on LinkedIn, use this structure:

-   **Hook:** Start with the business problem, not the tools ("An education policy team could count how many children were enrolled — but not how many could actually read…")
-   **What you did:** Briefly describe your analytical approach in Power BI
-   **Key finding:** Share one specific, concrete insight from the data
-   **Link:** Include your GitHub repository link
-   **Tags:** #DataAnalytics #PowerBI #DAX #ALXAfrica #EducationPolicy #PortfolioProject

Full LinkedIn Guide →',
  'published',
  23,
  now()
),
(
  'cap-001',
  'healthcare-analytics-end-to-end-patient-insights',
  'Healthcare Analytics: End-to-End Patient Insights',
  'Capstone',
  'Google Sheets, MySQL & Power BI',
  'Healthcare',
  'Advanced',
  '20–30 hours',
  array['Data Cleaning', 'SQL', 'Power BI', 'DAX', 'Data Storytelling', 'Business Recommendations']::text[],
  array['Google Sheets', 'MySQL', 'Power BI']::text[],
  'A complete analytics project: clean hospital data in Google Sheets, query the structured database with MySQL, and build an executive Power BI dashboard with actionable recommendations.',
  'https://www.kaggle.com/datasets/nehaprabhavalkar/av-healthcare-analytics-ii',
  '## Business Challenge

You have been engaged as a data analyst consultant by a regional healthcare network managing 12 hospitals and 40 outpatient clinics across three African countries. Leadership is concerned about inconsistent patient outcomes, rising average length of stay, and widening performance gaps between facilities.

Your task is to analyse patient admission, treatment, and outcome data across the network, identify the hospitals and departments with the greatest performance challenges, and present data-driven recommendations that leadership can act on.

## Background

Healthcare systems across Africa face a dual challenge: rising patient volumes on one side, and chronic resource constraints on the other. Data analytics offers a powerful lever — helping administrators allocate resources more effectively, reduce unnecessary admissions, and improve care pathways.

This project simulates the kind of analytics work a data analyst at a healthcare NGO, ministry of health, or hospital group would undertake. The findings should be rigorous enough to present to a senior leadership team.

## Project Objective

Deliver a complete analytics package — from raw data to executive insight — that enables the healthcare network''s leadership team to make evidence-based decisions about resource allocation and care quality improvement.

## Learning Objectives

By completing this project you will demonstrate the ability to:

-   Clean and prepare messy real-world healthcare data using Google Sheets
-   Design and query a relational hospital database using MySQL
-   Build an executive-level Power BI dashboard from a modelled data source
-   Write DAX measures for KPIs including average length of stay, readmission rate, and occupancy
-   Interpret findings in the context of a realistic business problem
-   Communicate actionable recommendations to a non-technical leadership audience

## Dataset Information

| Field | Details |
| --- | --- |
| Dataset Name | Healthcare Analytics Dataset |
| Publisher | Kaggle |
| Description | Anonymised patient records including admission dates, diagnoses, treatments, length of stay, and outcomes across multiple facilities |
| File Format | CSV |
| Approximate Size | ~25MB |
| Licence | Public — CC0 (check Kaggle page for latest terms) |
| Download Link | [kaggle.com — Healthcare Analytics II ↗](https://www.kaggle.com/datasets/nehaprabhavalkar/av-healthcare-analytics-ii) |
| Access | Free Kaggle account required. Click "Download" on the dataset page. |
| Known Limitations | Dataset is based on an Indian hospital system. Treat it as representative data for an African network — focus on the analytical process, not the geography. |
| Last Verified | July 2026 |

## Project Tasks

### Phase 1 — Data Preparation (Google Sheets)

-   Import the raw CSV and audit data quality: check for missing values, duplicates, and inconsistent entries
-   Standardise date formats, department names, and admission type categories
-   Document every cleaning decision and the reason for it in a separate log tab
-   Calculate derived columns: length of stay (days), age group bands, readmission flag
-   Export a cleaned, analysis-ready CSV for import into MySQL

### Phase 2 — SQL Analysis (MySQL)

-   Design a relational schema: patients, admissions, departments, facilities tables
-   Write queries to answer these business questions:
    -   Which departments have the highest average length of stay?
    -   What is the 30-day readmission rate by facility and by diagnosis category?
    -   Which age groups account for the highest proportion of emergency admissions?
    -   How does facility performance vary by bed occupancy rate?
-   Save all queries as documented .sql scripts with inline comments

### Phase 3 — Power BI Dashboard

-   Import cleaned data and build a star-schema data model
-   Create DAX measures for: total admissions, average length of stay, readmission rate, bed occupancy rate, and recovery rate
-   Design a three-page executive dashboard:
    -   Page 1: Network overview KPIs and facility comparison
    -   Page 2: Department-level drilldown
    -   Page 3: Trend analysis over time
-   Apply consistent ALX-inspired colours and clear data labels throughout

### Phase 4 — Recommendations Report

-   Write a 1–2 page executive summary identifying the three most critical findings
-   Propose at least two evidence-based recommendations the leadership team can action
-   Acknowledge the limitations of your analysis and the data

## Expected Deliverables

-   Google Sheets workbook: raw data tab, cleaning log tab, and cleaned data tab
-   MySQL scripts: schema creation (.sql) and all analysis queries (.sql), each commented
-   Power BI report file (.pbix) — three-page executive dashboard
-   Executive summary (PDF or Word, 1–2 pages)
-   GitHub repository with all files organised and a completed README

## Assessment Rubric

| Criterion | What Good Looks Like | Weight |
| --- | --- | --- |
| Data Preparation | All issues identified, cleaning decisions documented, derived columns correct | 20% |
| SQL Accuracy | Queries return correct results, use appropriate joins/aggregations, are clearly commented | 20% |
| Data Modelling | Star schema is correct, relationships are well-defined, no circular dependencies | 10% |
| DAX Measures | Measures return accurate values, are named clearly, and are correctly used in visuals | 15% |
| Dashboard Design | Clear hierarchy, correct chart types, consistent formatting, usable on a 13" screen | 15% |
| Insight Quality | Findings are specific, evidence-based, and non-obvious | 10% |
| Recommendations | Actionable, grounded in the data, acknowledge limitations | 5% |
| Documentation | README is complete, repository is well-organised, all sources are cited | 5% |

## Stretch Challenge

**For learners who want to go further:**

-   Add a forecasting visual in Power BI projecting admissions for the next 6 months using the built-in analytics pane
-   Segment patients into risk tiers (low/medium/high readmission risk) using SQL and visualise the distribution
-   Build a drill-through page in Power BI enabling leadership to inspect any single facility''s performance in detail
-   Write a reflection on what additional data would improve the quality of your recommendations and why

## Responsible AI Guidance

**You may use AI to:** explain concepts, debug SQL queries or DAX formulas, check your writing clarity, and brainstorm analytical questions.

**You may not use AI to:** generate the analysis, write your recommendations, or produce the executive summary for you. Your interpretations and conclusions must be your own.

If you use AI assistance significantly at any stage, note it briefly in your README. Employers value honesty about tooling — what matters is that the thinking and judgement are yours.

## Reflection Questions

Include written answers to at least three of these in your README or a separate reflection document:

-   What was the most significant data quality issue you encountered, and how did you resolve it?
-   Which SQL query was most challenging to write? What approach did you take?
-   What story does your dashboard tell that a table of numbers would not?
-   If you were presenting this to the hospital CEO, what three sentences would you lead with?
-   What limitations of this dataset most affected the quality of your recommendations?
-   What would you do differently if you were to repeat this project?

## GitHub Portfolio Guidance

Organise your repository as follows:

~~~text
healthcare-analytics-capstone/ ├── data/ │ ├── raw/ ← original downloaded file │ └── cleaned/ ← your cleaned CSV ├── sql/ │ ├── schema.sql │ └── analysis.sql ├── powerbi/ │ └── healthcare_dashboard.pbix ├── reports/ │ └── executive_summary.pdf ├── images/ │ └── dashboard_screenshot.png └── README.md
~~~

Your README should include: project title, business challenge, tools used, dataset source and link, key findings (3 bullet points), and a screenshot of the dashboard.

Full GitHub Guide →

## LinkedIn Showcase Guidance

When sharing this project on LinkedIn, use this structure:

-   **Hook:** Start with the business problem, not the tools ("A healthcare network was struggling with rising readmission rates…")
-   **What you did:** Briefly describe your analytical approach across all three tools
-   **Key finding:** Share one specific, concrete insight from the data
-   **Link:** Include your GitHub repository link
-   **Tags:** #DataAnalytics #PowerBI #SQL #ALXAfrica #HealthcareAnalytics #PortfolioProject

Full LinkedIn Guide →',
  'published',
  24,
  now()
),
(
  'cap-002',
  'retail-analytics-from-raw-data-to-executive-insights',
  'Retail Analytics: From Raw Data to Executive Insights',
  'Capstone',
  'Google Sheets, MySQL & Power BI',
  'Retail & E-commerce',
  'Advanced',
  '20–30 hours',
  array['Data Cleaning', 'SQL', 'Power BI', 'DAX', 'Business Recommendations', 'Data Storytelling']::text[],
  array['Google Sheets', 'MySQL', 'Power BI']::text[],
  'Clean and validate a retail sales dataset, run SQL queries to answer business questions, and present findings in a Power BI sales performance dashboard with executive recommendations.',
  'https://www.kaggle.com/datasets/olistbr/brazilian-ecommerce',
  '## Business Challenge

You have been engaged as a data analyst consultant by a Brazilian e-commerce marketplace operator. Leadership has years of order data sitting in a raw export but no consolidated view of what''s actually driving revenue, which categories are underperforming, or how satisfaction relates to repeat business.

Your task is to take this raw transactional data through a full analytics pipeline — clean it, query it, and present it — and deliver a set of executive recommendations leadership can act on.

## Background

E-commerce marketplaces generate rich, relational data, but turning that raw export into an executive-ready insight package requires the full analytics pipeline: cleaning in a spreadsheet, structured querying in SQL, and a well-modelled dashboard in Power BI. Each stage catches different problems and adds different value.

This project simulates the kind of end-to-end analytics engagement a data analyst would be asked to deliver for a retail or marketplace operator''s leadership team.

## Project Objective

Deliver a complete analytics package — from raw data to executive insight — that enables a retail marketplace''s leadership team to make evidence-based decisions about category investment and customer experience.

## Learning Objectives

By completing this project you will demonstrate the ability to:

-   Clean and prepare messy real-world e-commerce data using Google Sheets
-   Design and query a relational orders database using MySQL
-   Build an executive-level Power BI dashboard from a modelled data source
-   Write DAX measures for KPIs including revenue by category, average order value, and repeat purchase rate
-   Interpret findings in the context of a realistic retail business problem
-   Communicate actionable recommendations to a non-technical leadership audience

## Dataset Information

| Field | Details |
| --- | --- |
| Dataset Name | Brazilian E-commerce Public Dataset by Olist |
| Publisher | Kaggle (Olist) |
| Description | Real commercial orders from a Brazilian marketplace, including orders, order items, products, customers, sellers, and reviews across multiple related tables |
| File Format | CSV (multiple related files) |
| Approximate Size | ~100MB across all files |
| Licence | Public — CC BY-NC-SA 4.0 (check Kaggle page for latest terms) |
| Download Link | [kaggle.com — Brazilian E-commerce (Olist) ↗](https://www.kaggle.com/datasets/olistbr/brazilian-ecommerce) |
| Access | Free Kaggle account required. Click ''Download'' on the dataset page to get all related CSV files. |
| Known Limitations | Dataset is based on a Brazilian marketplace. Treat it as representative data for an e-commerce operator generally — focus on the analytical process, not the geography. |
| Last Verified | July 2026 |

## Project Tasks

### Phase 1 — Data Preparation (Google Sheets)

-   Import the raw order, item, product, and customer exports and audit for missing values, duplicates, and inconsistent category naming
-   Standardise date formats, product category names, and order status categories
-   Document every cleaning decision and the reason for it in a separate log tab
-   Calculate derived columns: order value, delivery time (days), review score buckets
-   Export cleaned, analysis-ready CSVs for import into MySQL

### Phase 2 — SQL Analysis (MySQL)

-   Write queries to answer these business questions:
    -   Which product categories generate the highest total revenue, and which have the highest average order value?
    -   What is the relationship between delivery time and review score?
    -   Which regions show the strongest revenue growth, and which are underperforming?
    -   What share of revenue comes from repeat customers versus one-time buyers?
-   Save all queries as documented .sql scripts with inline comments

### Phase 3 — Power BI Dashboard

-   Import cleaned data and build a star-schema data model
-   Create DAX measures for: total revenue, average order value, delivery time, and repeat purchase rate
-   Design a three-page executive dashboard:
    -   Page 1: Network overview KPIs and category comparison
    -   Page 2: Regional performance drilldown
    -   Page 3: Customer behaviour and satisfaction trends
-   Apply consistent ALX-inspired colours and clear data labels throughout

### Phase 4 — Recommendations Report

-   Write a 1–2 page executive summary identifying the three most critical findings
-   Propose at least two evidence-based recommendations the relevant stakeholders can action
-   Acknowledge the limitations of your analysis and the data

## Expected Deliverables

-   Google Sheets workbook: raw data tab, cleaning log tab, and cleaned data tab
-   MySQL scripts: schema creation (.sql) and all analysis queries (.sql), each commented
-   Power BI report file (.pbix) — three-page executive dashboard
-   Executive summary (PDF or Word, 1–2 pages)
-   GitHub repository with all files organised and a completed README

## Assessment Rubric

| Criterion | What Good Looks Like | Weight |
| --- | --- | --- |
| Data Preparation | All issues identified, cleaning decisions documented, derived columns correct | 20% |
| SQL Accuracy | Queries return correct results, use appropriate joins/aggregations, are clearly commented | 20% |
| Data Modelling | Star schema is correct, relationships are well-defined, no circular dependencies | 10% |
| DAX Measures | Measures return accurate values, are named clearly, and are correctly used in visuals | 15% |
| Dashboard Design | Clear hierarchy, correct chart types, consistent formatting, usable on a 13" screen | 15% |
| Insight Quality | Findings are specific, evidence-based, and non-obvious | 10% |
| Recommendations | Actionable, grounded in the data, acknowledge limitations | 5% |
| Documentation | README is complete, repository is well-organised, all sources are cited | 5% |

## Stretch Challenge

**For learners who want to go further:**

-   Add a forecasting visual in Power BI projecting revenue for the next 6 months using the built-in analytics pane
-   Segment customers into value tiers (low/medium/high lifetime value) using SQL and visualise the distribution
-   Build a drill-through page in Power BI enabling leadership to inspect any single category''s performance in detail
-   Write a reflection on what additional data would improve the quality of your recommendations and why

## Responsible AI Guidance

**You may use AI to:** explain concepts, debug SQL queries or DAX formulas, check your writing clarity, and brainstorm analytical questions.

**You may not use AI to:** generate the analysis, write your recommendations, or produce the executive summary for you. Your interpretations and conclusions must be your own.

If you use AI assistance significantly at any stage, note it briefly in your README. Employers value honesty about tooling — what matters is that the thinking and judgement are yours.

## Reflection Questions

Include written answers to at least three of these in your README or a separate reflection document:

-   What was the most significant data quality issue you encountered, and how did you resolve it?
-   Which SQL query was most challenging to write? What approach did you take?
-   What story does your dashboard tell that a table of numbers would not?
-   If you were presenting this to the marketplace''s CEO, what three sentences would you lead with?
-   What limitations of this dataset most affected the quality of your recommendations?
-   What would you do differently if you were to repeat this project?

## GitHub Portfolio Guidance

Organise your repository as follows:

~~~text
retail-analytics-capstone/ ├── data/ │ ├── raw/ ← link to source, not the file itself │ └── cleaned/ ← your cleaned CSV ├── sql/ │ ├── schema.sql │ └── analysis.sql ├── powerbi/ │ └── retail-analytics-capstone.pbix ├── reports/ │ └── executive_summary.pdf ├── images/ │ └── dashboard_screenshot.png └── README.md
~~~

Your README should include: project title, business challenge, tools used, dataset source and link, key findings (3 bullet points), and a screenshot of the dashboard.

Full GitHub Guide →

## LinkedIn Showcase Guidance

When sharing this project on LinkedIn, use this structure:

-   **Hook:** Start with the business problem, not the tools ("A marketplace operator had years of order data — and no clear answer to where its revenue was actually coming from…")
-   **What you did:** Briefly describe your analytical approach across all three tools
-   **Key finding:** Share one specific, concrete insight from the data
-   **Link:** Include your GitHub repository link
-   **Tags:** #DataAnalytics #SQL #PowerBI #ALXAfrica #Ecommerce #PortfolioProject

Full LinkedIn Guide →',
  'published',
  25,
  now()
),
(
  'cap-003',
  'financial-inclusion-analysing-access-to-banking-in-africa',
  'Financial Inclusion: Analysing Access to Banking in Africa',
  'Capstone',
  'Google Sheets, MySQL & Power BI',
  'Banking & Finance',
  'Advanced',
  '20–30 hours',
  array['Data Cleaning', 'SQL', 'Power BI', 'DAX', 'Data Storytelling', 'Business Recommendations']::text[],
  array['Google Sheets', 'MySQL', 'Power BI']::text[],
  'End-to-end project using World Bank Findex data to clean records, run SQL analysis, and produce a Power BI report on financial inclusion across African markets.',
  'https://globalfindex.worldbank.org/',
  '## Business Challenge

You have been engaged as a data analyst consultant by a pan-African financial inclusion advocacy group. The group has World Bank survey data on account ownership and mobile money adoption but has never turned it into a full analytics package that could guide programme investment decisions.

Your task is to take this survey data through a full analytics pipeline — clean it, query it, and present it — and deliver evidence-based recommendations for where the group''s next round of programming should focus.

## Background

Financial inclusion analysis depends on handling survey-based data carefully — different sample sizes, survey years, and definitions across countries all need to be reconciled before any cross-country comparison is meaningful. A full analytics pipeline, from spreadsheet cleaning through to a modelled dashboard, is what turns noisy survey data into a defensible programming recommendation.

This project simulates the kind of end-to-end analytics engagement a data analyst would be asked to deliver for a financial inclusion NGO or fintech strategy team.

## Project Objective

Deliver a complete analytics package — from raw survey data to executive insight — that enables a financial inclusion organisation to make evidence-based decisions about where to focus its next programming cycle.

## Learning Objectives

By completing this project you will demonstrate the ability to:

-   Clean and validate messy real-world survey data using Google Sheets
-   Design and query a relational financial inclusion database using MySQL
-   Build an executive-level Power BI dashboard from a modelled data source
-   Write DAX measures for KPIs including account ownership rate, mobile money adoption, and growth between survey waves
-   Interpret findings in the context of a realistic financial inclusion problem
-   Communicate actionable recommendations to a non-technical leadership audience

## Dataset Information

| Field | Details |
| --- | --- |
| Dataset Name | Global Findex Database |
| Publisher | World Bank |
| Description | Survey-based indicators on account ownership, mobile money usage, and financial behaviour, covering multiple survey waves across African countries |
| File Format | CSV / XLSX |
| Approximate Size | ~5–10MB for the Africa subset |
| Licence | Public — World Bank Open Data terms |
| Download Link | [globalfindex.worldbank.org ↗](https://globalfindex.worldbank.org/) |
| Access | Free, no account required. Download the full dataset or use the online data explorer to filter to African countries and export as CSV. |
| Known Limitations | Findex data is survey-based with several years between waves, so it shows snapshots rather than continuous trends — be explicit throughout your analysis about which years you''re comparing. |
| Last Verified | July 2026 |

## Project Tasks

### Phase 1 — Data Preparation (Google Sheets)

-   Import the raw Findex export and filter to African countries and financial inclusion indicators
-   Apply data validation to catch implausible values (e.g. percentages outside 0–100%)
-   Document every cleaning decision and the reason for it in a separate log tab
-   Calculate derived columns: adoption rate change between survey waves, gender gap in account ownership
-   Export cleaned, analysis-ready CSVs for import into MySQL

### Phase 2 — SQL Analysis (MySQL)

-   Write queries to answer these business questions:
    -   Which countries have the largest gender gap in account ownership, and has it narrowed or widened over time?
    -   What is the relationship between mobile money adoption and formal account ownership across countries?
    -   Which countries show the fastest growth in financial inclusion between the two most recent survey waves?
    -   How does urban versus rural access (where available) compare across the highest and lowest performing countries?
-   Save all queries as documented .sql scripts with inline comments

### Phase 3 — Power BI Dashboard

-   Import cleaned data and build a star-schema data model
-   Create DAX measures for: account ownership rate, mobile money adoption rate, gender gap, and wave-over-wave growth
-   Design a three-page executive dashboard:
    -   Page 1: Regional overview KPIs and country comparison
    -   Page 2: Gender gap and demographic drilldown
    -   Page 3: Growth trend analysis across survey waves
-   Apply consistent ALX-inspired colours and clear data labels throughout

### Phase 4 — Recommendations Report

-   Write a 1–2 page executive summary identifying the three most critical findings
-   Propose at least two evidence-based recommendations the relevant stakeholders can action
-   Acknowledge the limitations of your analysis and the data

## Expected Deliverables

-   Google Sheets workbook: raw data tab, cleaning log tab, and cleaned data tab
-   MySQL scripts: schema creation (.sql) and all analysis queries (.sql), each commented
-   Power BI report file (.pbix) — three-page executive dashboard
-   Executive summary (PDF or Word, 1–2 pages)
-   GitHub repository with all files organised and a completed README

## Assessment Rubric

| Criterion | What Good Looks Like | Weight |
| --- | --- | --- |
| Data Preparation | All issues identified, cleaning decisions documented, derived columns correct | 20% |
| SQL Accuracy | Queries return correct results, use appropriate joins/aggregations, are clearly commented | 20% |
| Data Modelling | Star schema is correct, relationships are well-defined, no circular dependencies | 10% |
| DAX Measures | Measures return accurate values, are named clearly, and are correctly used in visuals | 15% |
| Dashboard Design | Clear hierarchy, correct chart types, consistent formatting, usable on a 13" screen | 15% |
| Insight Quality | Findings are specific, evidence-based, and non-obvious | 10% |
| Recommendations | Actionable, grounded in the data, acknowledge limitations | 5% |
| Documentation | README is complete, repository is well-organised, all sources are cited | 5% |

## Stretch Challenge

**For learners who want to go further:**

-   Add a scatter visual in Power BI exploring the relationship between mobile penetration and financial inclusion
-   Segment countries into inclusion tiers using SQL and visualise the distribution
-   Build a drill-through page in Power BI enabling the advocacy group to inspect any single country''s full indicator profile
-   Write a reflection on what additional data would improve the quality of your recommendations and why

## Responsible AI Guidance

**You may use AI to:** explain concepts, debug SQL queries or DAX formulas, check your writing clarity, and brainstorm analytical questions.

**You may not use AI to:** generate the analysis, write your recommendations, or produce the executive summary for you. Your interpretations and conclusions must be your own.

If you use AI assistance significantly at any stage, note it briefly in your README. Employers value honesty about tooling — what matters is that the thinking and judgement are yours.

## Reflection Questions

Include written answers to at least three of these in your README or a separate reflection document:

-   What was the most significant data quality issue you encountered, and how did you resolve it?
-   Which SQL query was most challenging to write? What approach did you take?
-   What story does your dashboard tell that a table of numbers would not?
-   If you were presenting this to the advocacy group''s board, what three sentences would you lead with?
-   What limitations of this dataset most affected the quality of your recommendations?
-   What would you do differently if you were to repeat this project?

## GitHub Portfolio Guidance

Organise your repository as follows:

~~~text
financial-inclusion-capstone/ ├── data/ │ ├── raw/ ← link to source, not the file itself │ └── cleaned/ ← your cleaned CSV ├── sql/ │ ├── schema.sql │ └── analysis.sql ├── powerbi/ │ └── financial-inclusion-capstone.pbix ├── reports/ │ └── executive_summary.pdf ├── images/ │ └── dashboard_screenshot.png └── README.md
~~~

Your README should include: project title, business challenge, tools used, dataset source and link, key findings (3 bullet points), and a screenshot of the dashboard.

Full GitHub Guide →

## LinkedIn Showcase Guidance

When sharing this project on LinkedIn, use this structure:

-   **Hook:** Start with the business problem, not the tools ("A financial inclusion group had years of survey data — and no clear answer to where the next dollar of programming should go…")
-   **What you did:** Briefly describe your analytical approach across all three tools
-   **Key finding:** Share one specific, concrete insight from the data
-   **Link:** Include your GitHub repository link
-   **Tags:** #DataAnalytics #SQL #PowerBI #ALXAfrica #FinancialInclusion #PortfolioProject

Full LinkedIn Guide →',
  'published',
  26,
  now()
),
(
  'cap-004',
  'energy-access-and-sustainable-development',
  'Energy Access & Sustainable Development',
  'Capstone',
  'Google Sheets, MySQL & Power BI',
  'Energy',
  'Advanced',
  '20–30 hours',
  array['Data Cleaning', 'SQL', 'Power BI', 'DAX', 'Maps', 'Business Recommendations']::text[],
  array['Google Sheets', 'MySQL', 'Power BI']::text[],
  'Prepare, query, and visualise data on energy access and renewable capacity across Africa, producing an integrated report for an energy policy team.',
  'https://data.worldbank.org/indicator/EG.ELC.ACCS.ZS',
  '## Business Challenge

You have been engaged as a data analyst consultant by an energy policy team. They have World Bank data on electricity access and renewable capacity but no integrated report connecting coverage gaps, population impact, and renewable growth into a single evidence base for policy briefings.

Your task is to prepare, query, and visualise energy access data across Africa, producing an integrated report for the energy policy team.

## Background

Energy access analysis benefits enormously from a full pipeline: cleaning catches inconsistent country naming and reporting gaps, SQL enables precise comparison queries, and a mapped Power BI dashboard makes geographic patterns immediately visible to a policy audience.

This project simulates the kind of end-to-end analytics engagement a data analyst would be asked to deliver for an energy access NGO or government energy policy unit.

## Project Objective

Deliver a complete analytics package — from raw data to executive insight — that enables an energy policy team to make evidence-based decisions about where to prioritise electrification and renewable investment.

## Learning Objectives

By completing this project you will demonstrate the ability to:

-   Clean and prepare messy real-world energy access data using Google Sheets
-   Design and query a relational energy indicators database using MySQL
-   Build an executive-level Power BI dashboard with map visuals from a modelled data source
-   Write DAX measures for KPIs including access rate, unserved population, and renewable capacity growth
-   Interpret findings in the context of a realistic energy policy problem
-   Communicate actionable recommendations to a non-technical leadership audience

## Dataset Information

| Field | Details |
| --- | --- |
| Dataset Name | Sustainable Energy for All — Access to Electricity |
| Publisher | World Bank |
| Description | Country-level percentage of population with access to electricity, renewable capacity indicators, and population figures across multiple years |
| File Format | CSV / XLSX |
| Approximate Size | ~2–5MB |
| Licence | Public — CC BY 4.0 (World Bank Open Data) |
| Download Link | [data.worldbank.org — Access to Electricity ↗](https://data.worldbank.org/indicator/EG.ELC.ACCS.ZS) |
| Access | Free, no account required. Download the indicator as CSV directly from the World Bank Data portal, along with population and renewable capacity indicators. |
| Known Limitations | Some countries have gaps in reporting for certain years, and access percentages don''t distinguish grid vs. off-grid or reliability of supply — note this distinction throughout your analysis. |
| Last Verified | July 2026 |

## Project Tasks

### Phase 1 — Data Preparation (Google Sheets)

-   Import electricity access, population, and renewable capacity indicators and filter to African countries
-   Audit for missing years and align datasets on the same reporting year per country
-   Document every cleaning decision and the reason for it in a separate log tab
-   Calculate derived columns: population without electricity access, renewable capacity per capita
-   Export cleaned, analysis-ready CSVs for import into MySQL

### Phase 2 — SQL Analysis (MySQL)

-   Write queries to answer these business questions:
    -   Which countries have the largest unserved population once access rate is converted to absolute numbers?
    -   How does renewable energy capacity growth compare between the highest and lowest access-rate countries?
    -   Which countries show the fastest improvement in access rate over the available years?
    -   Is there a relationship between a country''s renewable capacity growth and its overall access rate improvement?
-   Save all queries as documented .sql scripts with inline comments

### Phase 3 — Power BI Dashboard

-   Import cleaned data and build a star-schema data model
-   Create DAX measures for: access rate, unserved population, renewable capacity growth, and year-over-year change
-   Design a three-page executive dashboard:
    -   Page 1: Regional overview KPIs and map of unserved population
    -   Page 2: Country-level access and renewable capacity drilldown
    -   Page 3: Trend analysis over time
-   Apply consistent ALX-inspired colours and clear data labels throughout

### Phase 4 — Recommendations Report

-   Write a 1–2 page executive summary identifying the three most critical findings
-   Propose at least two evidence-based recommendations the relevant stakeholders can action
-   Acknowledge the limitations of your analysis and the data

## Expected Deliverables

-   Google Sheets workbook: raw data tab, cleaning log tab, and cleaned data tab
-   MySQL scripts: schema creation (.sql) and all analysis queries (.sql), each commented
-   Power BI report file (.pbix) — three-page executive dashboard
-   Executive summary (PDF or Word, 1–2 pages)
-   GitHub repository with all files organised and a completed README

## Assessment Rubric

| Criterion | What Good Looks Like | Weight |
| --- | --- | --- |
| Data Preparation | All issues identified, cleaning decisions documented, derived columns correct | 20% |
| SQL Accuracy | Queries return correct results, use appropriate joins/aggregations, are clearly commented | 20% |
| Data Modelling | Star schema is correct, relationships are well-defined, no circular dependencies | 10% |
| DAX Measures | Measures return accurate values, are named clearly, and are correctly used in visuals | 15% |
| Dashboard Design | Clear hierarchy, correct chart types, consistent formatting, usable on a 13" screen | 15% |
| Insight Quality | Findings are specific, evidence-based, and non-obvious | 10% |
| Recommendations | Actionable, grounded in the data, acknowledge limitations | 5% |
| Documentation | README is complete, repository is well-organised, all sources are cited | 5% |

## Stretch Challenge

**For learners who want to go further:**

-   Add a what-if parameter in Power BI modelling a hypothetical percentage-point improvement in access rate
-   Segment countries into priority tiers using SQL combining access rate and population, and visualise the distribution
-   Build a drill-through page in Power BI enabling the policy team to inspect any single country''s full energy profile
-   Write a reflection on what additional data would improve the quality of your recommendations and why

## Responsible AI Guidance

**You may use AI to:** explain concepts, debug SQL queries or DAX formulas, check your writing clarity, and brainstorm analytical questions.

**You may not use AI to:** generate the analysis, write your recommendations, or produce the executive summary for you. Your interpretations and conclusions must be your own.

If you use AI assistance significantly at any stage, note it briefly in your README. Employers value honesty about tooling — what matters is that the thinking and judgement are yours.

## Reflection Questions

Include written answers to at least three of these in your README or a separate reflection document:

-   What was the most significant data quality issue you encountered, and how did you resolve it?
-   Which SQL query was most challenging to write? What approach did you take?
-   What story does your dashboard tell that a table of numbers would not?
-   If you were presenting this to a ministry of energy, what three sentences would you lead with?
-   What limitations of this dataset most affected the quality of your recommendations?
-   What would you do differently if you were to repeat this project?

## GitHub Portfolio Guidance

Organise your repository as follows:

~~~text
energy-access-sustainable-development-capstone/ ├── data/ │ ├── raw/ ← link to source, not the file itself │ └── cleaned/ ← your cleaned CSV ├── sql/ │ ├── schema.sql │ └── analysis.sql ├── powerbi/ │ └── energy-access-sustainable-development-capstone.pbix ├── reports/ │ └── executive_summary.pdf ├── images/ │ └── dashboard_screenshot.png └── README.md
~~~

Your README should include: project title, business challenge, tools used, dataset source and link, key findings (3 bullet points), and a screenshot of the dashboard.

Full GitHub Guide →

## LinkedIn Showcase Guidance

When sharing this project on LinkedIn, use this structure:

-   **Hook:** Start with the business problem, not the tools ("An energy policy team had coverage data, capacity data, and population data — but never one report connecting all three…")
-   **What you did:** Briefly describe your analytical approach across all three tools
-   **Key finding:** Share one specific, concrete insight from the data
-   **Link:** Include your GitHub repository link
-   **Tags:** #DataAnalytics #SQL #PowerBI #ALXAfrica #EnergyAccess #PortfolioProject

Full LinkedIn Guide →',
  'published',
  27,
  now()
),
(
  'cap-005',
  'agricultural-supply-chain-from-yield-to-market',
  'Agricultural Supply Chain: From Yield to Market',
  'Capstone',
  'Google Sheets, MySQL & Power BI',
  'Agriculture & Food Systems',
  'Advanced',
  '20–30 hours',
  array['Data Cleaning', 'SQL', 'Power BI', 'DAX', 'Data Storytelling']::text[],
  array['Google Sheets', 'MySQL', 'Power BI']::text[],
  'Integrate crop yield, price, and trade data to analyse agricultural supply chain efficiency, food security risk, and market access challenges across African nations.',
  'https://www.fao.org/faostat/en/',
  '## Business Challenge

You have been engaged as a data analyst consultant by a regional agricultural trade and food security unit. They track crop yield, price, and trade data separately, with no integrated view of how supply chain efficiency and market access interact with food security risk.

Your task is to integrate crop yield, price, and trade data to analyse agricultural supply chain efficiency, food security risk, and market access challenges across African nations.

## Background

Agricultural supply chain analysis requires connecting data that''s often held in separate silos — production volumes, market prices, and trade flows. A full analytics pipeline lets an analyst clean and reconcile these sources, query them together in SQL, and present an integrated view that a single spreadsheet or chart pack couldn''t achieve.

This project simulates the kind of end-to-end analytics engagement a data analyst would be asked to deliver for an agricultural policy unit or food security NGO.

## Project Objective

Deliver a complete analytics package — from raw data to executive insight — that enables an agricultural policy team to make evidence-based decisions about supply chain investment and food security risk mitigation.

## Learning Objectives

By completing this project you will demonstrate the ability to:

-   Clean and prepare messy real-world agricultural production and price data using Google Sheets
-   Design and query a relational agricultural database using MySQL
-   Build an executive-level Power BI dashboard from a modelled data source
-   Write DAX measures for KPIs including yield trend, price volatility, and production-to-price relationship
-   Interpret findings in the context of a realistic food security and supply chain problem
-   Communicate actionable recommendations to a non-technical leadership audience

## Dataset Information

| Field | Details |
| --- | --- |
| Dataset Name | FAOSTAT — Crops, Livestock Products, and Producer Prices |
| Publisher | Food and Agriculture Organization of the United Nations (FAO) |
| Description | Country-level annual production, area harvested, yield, and producer price data across major crop types, covering multiple decades |
| File Format | CSV (bulk download or filtered export via FAOSTAT query tool) |
| Approximate Size | ~10–30MB depending on country/crop selection |
| Licence | Public — CC BY 4.0 |
| Download Link | [fao.org — FAOSTAT ↗](https://www.fao.org/faostat/en/) |
| Access | Free, no account required. Use the FAOSTAT query tool to filter by region (Sub-Saharan Africa), crop type, and year range for both production and price data, then export as CSV. |
| Known Limitations | Some countries have incomplete reporting for certain years — treat gaps as missing data, not zero production, and document how you handled them. |
| Last Verified | July 2026 |

## Project Tasks

### Phase 1 — Data Preparation (Google Sheets)

-   Import the raw FAOSTAT production and price exports and filter to Sub-Saharan African countries and a representative set of staple crops
-   Audit for missing years, inconsistent units, and outlier values across both datasets
-   Document every cleaning decision and the reason for it in a separate log tab
-   Calculate derived columns: year-over-year yield change, price volatility (rolling standard deviation)
-   Export cleaned, analysis-ready CSVs for import into MySQL

### Phase 2 — SQL Analysis (MySQL)

-   Write queries to answer these business questions:
    -   Which countries and crops show a sustained yield decline alongside rising price volatility?
    -   Is there a relationship between production volume and price stability for key staple crops?
    -   Which countries show the widest gap between production trend and price trend, suggesting market access issues rather than production issues?
    -   Which crops show the highest food security risk when combining yield trend and price volatility?
-   Save all queries as documented .sql scripts with inline comments

### Phase 3 — Power BI Dashboard

-   Import cleaned data and build a star-schema data model
-   Create DAX measures for: yield trend, price volatility, and a combined food security risk indicator
-   Design a three-page executive dashboard:
    -   Page 1: Regional overview KPIs and risk ranking
    -   Page 2: Country and crop-level drilldown
    -   Page 3: Multi-year trend analysis
-   Apply consistent ALX-inspired colours and clear data labels throughout

### Phase 4 — Recommendations Report

-   Write a 1–2 page executive summary identifying the three most critical findings
-   Propose at least two evidence-based recommendations the relevant stakeholders can action
-   Acknowledge the limitations of your analysis and the data

## Expected Deliverables

-   Google Sheets workbook: raw data tab, cleaning log tab, and cleaned data tab
-   MySQL scripts: schema creation (.sql) and all analysis queries (.sql), each commented
-   Power BI report file (.pbix) — three-page executive dashboard
-   Executive summary (PDF or Word, 1–2 pages)
-   GitHub repository with all files organised and a completed README

## Assessment Rubric

| Criterion | What Good Looks Like | Weight |
| --- | --- | --- |
| Data Preparation | All issues identified, cleaning decisions documented, derived columns correct | 20% |
| SQL Accuracy | Queries return correct results, use appropriate joins/aggregations, are clearly commented | 20% |
| Data Modelling | Star schema is correct, relationships are well-defined, no circular dependencies | 10% |
| DAX Measures | Measures return accurate values, are named clearly, and are correctly used in visuals | 15% |
| Dashboard Design | Clear hierarchy, correct chart types, consistent formatting, usable on a 13" screen | 15% |
| Insight Quality | Findings are specific, evidence-based, and non-obvious | 10% |
| Recommendations | Actionable, grounded in the data, acknowledge limitations | 5% |
| Documentation | README is complete, repository is well-organised, all sources are cited | 5% |

## Stretch Challenge

**For learners who want to go further:**

-   Add a forecasting visual in Power BI projecting yield for the highest-risk country''s top crop using the built-in analytics pane
-   Segment countries into risk tiers using SQL combining yield and price indicators, and visualise the distribution
-   Build a drill-through page in Power BI enabling the policy team to inspect any single country''s full supply chain profile
-   Write a reflection on what additional data would improve the quality of your recommendations and why

## Responsible AI Guidance

**You may use AI to:** explain concepts, debug SQL queries or DAX formulas, check your writing clarity, and brainstorm analytical questions.

**You may not use AI to:** generate the analysis, write your recommendations, or produce the executive summary for you. Your interpretations and conclusions must be your own.

If you use AI assistance significantly at any stage, note it briefly in your README. Employers value honesty about tooling — what matters is that the thinking and judgement are yours.

## Reflection Questions

Include written answers to at least three of these in your README or a separate reflection document:

-   What was the most significant data quality issue you encountered, and how did you resolve it?
-   Which SQL query was most challenging to write? What approach did you take?
-   What story does your dashboard tell that a table of numbers would not?
-   If you were presenting this to a food security funding committee, what three sentences would you lead with?
-   What limitations of this dataset most affected the quality of your recommendations?
-   What would you do differently if you were to repeat this project?

## GitHub Portfolio Guidance

Organise your repository as follows:

~~~text
agricultural-supply-chain-capstone/ ├── data/ │ ├── raw/ ← link to source, not the file itself │ └── cleaned/ ← your cleaned CSV ├── sql/ │ ├── schema.sql │ └── analysis.sql ├── powerbi/ │ └── agricultural-supply-chain-capstone.pbix ├── reports/ │ └── executive_summary.pdf ├── images/ │ └── dashboard_screenshot.png └── README.md
~~~

Your README should include: project title, business challenge, tools used, dataset source and link, key findings (3 bullet points), and a screenshot of the dashboard.

Full GitHub Guide →

## LinkedIn Showcase Guidance

When sharing this project on LinkedIn, use this structure:

-   **Hook:** Start with the business problem, not the tools ("A food security unit tracked yield and price separately — until the two stories were finally told together…")
-   **What you did:** Briefly describe your analytical approach across all three tools
-   **Key finding:** Share one specific, concrete insight from the data
-   **Link:** Include your GitHub repository link
-   **Tags:** #DataAnalytics #SQL #PowerBI #ALXAfrica #FoodSecurity #PortfolioProject

Full LinkedIn Guide →',
  'published',
  28,
  now()
),
(
  'cap-006',
  'education-system-performance-a-national-analysis',
  'Education System Performance: A National Analysis',
  'Capstone',
  'Google Sheets, MySQL & Power BI',
  'Education',
  'Advanced',
  '20–30 hours',
  array['Data Cleaning', 'SQL', 'Power BI', 'DAX', 'Data Storytelling', 'Business Recommendations']::text[],
  array['Google Sheets', 'MySQL', 'Power BI']::text[],
  'Analyse UNESCO and World Bank education data across the full analytics pipeline to surface performance gaps, gender disparities, and investment priorities.',
  'http://uis.unesco.org/',
  '## Business Challenge

You have been engaged as a data analyst consultant by an education ministry''s planning unit. They have enrollment, gender, and learning outcome data from multiple sources but no single integrated report connecting access, equity, and investment priorities.

Your task is to analyse UNESCO and World Bank education data across the full analytics pipeline to surface performance gaps, gender disparities, and investment priorities.

## Background

National education planning requires connecting enrollment data, gender parity indicators, and (where available) learning outcome data into a single evidence base. A full analytics pipeline — cleaning, SQL querying, and a modelled dashboard — is what turns scattered UNESCO and World Bank tables into a genuinely useful planning tool.

This project simulates the kind of end-to-end analytics engagement a data analyst would be asked to deliver for a ministry of education planning unit or education-focused NGO.

## Project Objective

Deliver a complete analytics package — from raw data to executive insight — that enables an education ministry''s planning unit to make evidence-based decisions about where to prioritise investment.

## Learning Objectives

By completing this project you will demonstrate the ability to:

-   Clean and prepare messy real-world education enrollment and outcome data using Google Sheets
-   Design and query a relational education indicators database using MySQL
-   Build an executive-level Power BI dashboard from a modelled data source
-   Write DAX measures for KPIs including enrollment rate, gender parity index, and regional performance gap
-   Interpret findings in the context of a realistic national education planning problem
-   Communicate actionable recommendations to a non-technical leadership audience

## Dataset Information

| Field | Details |
| --- | --- |
| Dataset Name | UIS Education Statistics — Enrollment, Gender, and Outcome Indicators |
| Publisher | UNESCO Institute for Statistics (UIS) |
| Description | Country-level enrollment figures by sex and education level, alongside available learning outcome indicators, covering multiple years |
| File Format | CSV / XLSX (downloadable via the UIS data browser) |
| Approximate Size | ~5–15MB depending on country/level selection |
| Licence | Public — UNESCO open data terms |
| Download Link | [uis.unesco.org ↗](http://uis.unesco.org/) |
| Access | Free, no account required. Use the UIS data browser to filter to African countries and enrollment/outcome indicators, then export as CSV. |
| Known Limitations | Reporting completeness varies significantly by country and year — some countries have large gaps in their time series. Be explicit about which years you''re comparing for each country. |
| Last Verified | July 2026 |

## Project Tasks

### Phase 1 — Data Preparation (Google Sheets)

-   Import the raw UIS export and filter to African countries and relevant enrollment/outcome indicators
-   Audit for missing years and inconsistent country naming
-   Document every cleaning decision and the reason for it in a separate log tab
-   Calculate derived columns: gender parity index by country and level, enrollment change over time
-   Export cleaned, analysis-ready CSVs for import into MySQL

### Phase 2 — SQL Analysis (MySQL)

-   Write queries to answer these business questions:
    -   Which countries show the widest gender parity gap, and does it widen or narrow between primary and secondary level?
    -   Which countries show declining enrollment despite regional averages improving?
    -   Is there a relationship between enrollment rate and available learning outcome indicators, where data permits?
    -   Which countries represent the strongest ''quick win'' investment case — moderate gaps with recent positive momentum?
-   Save all queries as documented .sql scripts with inline comments

### Phase 3 — Power BI Dashboard

-   Import cleaned data and build a star-schema data model
-   Create DAX measures for: enrollment rate, gender parity index, and year-over-year change
-   Design a three-page executive dashboard:
    -   Page 1: National overview KPIs and country comparison
    -   Page 2: Gender parity and regional drilldown
    -   Page 3: Multi-year trend analysis
-   Apply consistent ALX-inspired colours and clear data labels throughout

### Phase 4 — Recommendations Report

-   Write a 1–2 page executive summary identifying the three most critical findings
-   Propose at least two evidence-based recommendations the relevant stakeholders can action
-   Acknowledge the limitations of your analysis and the data

## Expected Deliverables

-   Google Sheets workbook: raw data tab, cleaning log tab, and cleaned data tab
-   MySQL scripts: schema creation (.sql) and all analysis queries (.sql), each commented
-   Power BI report file (.pbix) — three-page executive dashboard
-   Executive summary (PDF or Word, 1–2 pages)
-   GitHub repository with all files organised and a completed README

## Assessment Rubric

| Criterion | What Good Looks Like | Weight |
| --- | --- | --- |
| Data Preparation | All issues identified, cleaning decisions documented, derived columns correct | 20% |
| SQL Accuracy | Queries return correct results, use appropriate joins/aggregations, are clearly commented | 20% |
| Data Modelling | Star schema is correct, relationships are well-defined, no circular dependencies | 10% |
| DAX Measures | Measures return accurate values, are named clearly, and are correctly used in visuals | 15% |
| Dashboard Design | Clear hierarchy, correct chart types, consistent formatting, usable on a 13" screen | 15% |
| Insight Quality | Findings are specific, evidence-based, and non-obvious | 10% |
| Recommendations | Actionable, grounded in the data, acknowledge limitations | 5% |
| Documentation | README is complete, repository is well-organised, all sources are cited | 5% |

## Stretch Challenge

**For learners who want to go further:**

-   Add a scatter visual in Power BI exploring the relationship between gender parity and overall enrollment rate
-   Segment countries into investment priority tiers using SQL, and visualise the distribution
-   Build a drill-through page in Power BI enabling the planning unit to inspect any single country''s full indicator profile
-   Write a reflection on what additional data would improve the quality of your recommendations and why

## Responsible AI Guidance

**You may use AI to:** explain concepts, debug SQL queries or DAX formulas, check your writing clarity, and brainstorm analytical questions.

**You may not use AI to:** generate the analysis, write your recommendations, or produce the executive summary for you. Your interpretations and conclusions must be your own.

If you use AI assistance significantly at any stage, note it briefly in your README. Employers value honesty about tooling — what matters is that the thinking and judgement are yours.

## Reflection Questions

Include written answers to at least three of these in your README or a separate reflection document:

-   What was the most significant data quality issue you encountered, and how did you resolve it?
-   Which SQL query was most challenging to write? What approach did you take?
-   What story does your dashboard tell that a table of numbers would not?
-   If you were presenting this to the ministry''s planning director, what three sentences would you lead with?
-   What limitations of this dataset most affected the quality of your recommendations?
-   What would you do differently if you were to repeat this project?

## GitHub Portfolio Guidance

Organise your repository as follows:

~~~text
education-system-performance-capstone/ ├── data/ │ ├── raw/ ← link to source, not the file itself │ └── cleaned/ ← your cleaned CSV ├── sql/ │ ├── schema.sql │ └── analysis.sql ├── powerbi/ │ └── education-system-performance-capstone.pbix ├── reports/ │ └── executive_summary.pdf ├── images/ │ └── dashboard_screenshot.png └── README.md
~~~

Your README should include: project title, business challenge, tools used, dataset source and link, key findings (3 bullet points), and a screenshot of the dashboard.

Full GitHub Guide →

## LinkedIn Showcase Guidance

When sharing this project on LinkedIn, use this structure:

-   **Hook:** Start with the business problem, not the tools ("A ministry''s planning unit had enrollment data, gender data, and outcome data — filed in three different places…")
-   **What you did:** Briefly describe your analytical approach across all three tools
-   **Key finding:** Share one specific, concrete insight from the data
-   **Link:** Include your GitHub repository link
-   **Tags:** #DataAnalytics #SQL #PowerBI #ALXAfrica #EducationPolicy #PortfolioProject

Full LinkedIn Guide →',
  'published',
  29,
  now()
)
on conflict (slug) do update set
  legacy_id = excluded.legacy_id,
  title = excluded.title,
  course = excluded.course,
  course_name = excluded.course_name,
  domain = excluded.domain,
  difficulty = excluded.difficulty,
  estimated_time = excluded.estimated_time,
  skills = excluded.skills,
  tools = excluded.tools,
  summary = excluded.summary,
  dataset_url = excluded.dataset_url,
  content_markdown = excluded.content_markdown,
  status = excluded.status,
  sort_order = excluded.sort_order,
  published_at = coalesce(public.projects.published_at, excluded.published_at);
