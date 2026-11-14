# Special Education Professional Learning: Practical LLM Use

A ten-session professional-learning course for special education teachers, teachers of students with visual impairments (TVIs), teachers of deaf and hard-of-hearing students, school psychologists, speech-language pathologists (SLPs), related-service providers, and classroom partners.

The course teaches bounded, privacy-conscious use of large language models (LLMs) and Microsoft 365 Copilot for educational planning, related-service workflows, IEP-related preparation, observation, progress monitoring, data review, and professional communication. Participants select a fictional case relevant to their role. The vision/ECC case remains included, but ECC knowledge is not required for participants using another case.

## Start here

1. Read the [Course Overview](src/summary.md).
2. Follow the [Course Map and Assessment Plan](src/course-map-and-assessment-plan.md). It is the definitive ten-session sequence and assessment schedule.
3. Read [Getting Started](src/getting-started.md).
4. Select the [Aureliano Buendia vision/ECC case](src/07-fictional-student-case.md) or one of the [multidisciplinary special education cases](src/multidisciplinary-case-studies.md).
5. Complete the assessments at the times specified in the course map.
6. Use the [Final Special Education Capstone Workbook](src/08-final-workbook.md) and [Practical Competency Checklist](src/practical-competency-checklist.md) to organize and review your work.

## Ten-session curriculum map

| Session | Focus | Participant evidence |
|---|---|---|
| 1 | Bounded prompting | Prompt and revision |
| 2 | Plan, Refine, and brainstorm role-appropriate goals or targets | Planning brief and candidate target options |
| 3 | Data collection and operational measurement | Operational definition and aligned data tool |
| 4 | Excel progress monitoring | Excel-ready tracker and verified data summary |
| 5 | Data-based decisions and refinement | Data interpretation and next-step plan |
| 6 | Copilot email triage using simulated messages | Advisory action report with source verification |
| 7 | AI literacy foundations | Explanation of model limits and tool selection |
| 8 | Misconceptions and failure analysis | E/I/U/X annotation and revised prompt |
| 9 | Critical evaluation | Verified claims, calculations, sources, accessibility, and privacy review |
| 10 | Independent performance capstone | Artifact, verification record, reflection, and 0–3 capstone rubric |

Sessions 1–6 are detailed in the [Applied Facilitator Guide](src/facilitator-practice-edition.md). Sessions 7–10 are detailed in the [AI Literacy Facilitator Guide](src/ai-literacy-facilitator-guide.md). Together, these guides cover the full course.

## Assessment schedule

- **Before Session 1:** Applied-course pre-assessment.
- **Before Session 7:** AI-literacy pre-assessment.
- **During Session 10:** Independent performance capstone.
- **After Session 10:** Both parallel post-assessments.

The [Course Map and Assessment Plan](src/course-map-and-assessment-plan.md) explains how to interpret the assessments and distinguish their scoring systems. The competency checklist uses item-level 0–2 ratings for formative coaching. The capstone uses a separate 0–3 domain rubric. Do not combine the scores.

## The instructional design cycle

The course is built around **Plan → Refine → Build → Refine**, not one-shot prompt generation:

1. **Plan:** Define one educational or related-service question, meaningful task, context, learner strengths, facts, and unknowns.
2. **Refine:** Use the LLM to surface assumptions, missing information, and questions. The professional narrows and approves the plan.
3. **Build:** Draft one bounded artifact, such as a task analysis, observation form, communication-access check, or data summary.
4. **Refine:** Test the artifact, review evidence and learner/staff feedback, and revise it.

The professional remains responsible for decisions within their role. AI does not diagnose, determine eligibility, interpret standardized assessments in place of qualified professionals, decide placement or services, make IEP-team decisions, or replace clinical, instructional, or school-psychology judgment.

## Selecting a case

Use one case as a continuing practice context:

- [Aureliano Buendia — Vision, Access, and Dual-Media Learning](src/07-fictional-student-case.md).
- [Multidisciplinary Special Education Case Studies](src/multidisciplinary-case-studies.md): deaf and hard-of-hearing education, school psychology, speech-language pathology, mathematics reasoning, and reading.
- [Additional Fictional Student Cases](src/practice-student-cases.md).

Each case identifies known facts, unknowns, a bounded practice task, and professional boundaries. Participants work within their professional scope and identify when consultation or team decisions are required. All profiles and practice data are fictional.

## Participant and facilitator resources

- [Participant Lesson Handouts](src/participant-lesson-handouts.md)
- [Participant Pre- and Post-Assessment](src/participant-assessments.md)
- [AI Literacy and Misconception Assessment](src/ai-literacy-assessment.md)
- [Practical Competency Checklist](src/practical-competency-checklist.md)
- [Reusable Prompt Library](src/prompt-library.md)
- [Hands-on Practice Labs](src/practice-labs.md)
- [Privacy, Responsible Use, and District Implementation](src/responsible-use-and-implementation.md)
- [References and Further Learning](src/references.md)
- [Accessibility and Release QA Checklist](src/accessibility-and-release-checklist.md)

## Workbook and spreadsheet files

The [Final Special Education Capstone Workbook](src/08-final-workbook.md) is a text-based Markdown workbook within the course. It is not a separate Excel file. CSV files provide spreadsheet-ready practice data and templates:

- [Synthetic example progress-monitoring data](src/progress-monitoring-example.csv)
- [TVI data-collection template](src/tvi-data-collection-template.csv) — vision-specific.
- [Classroom data-collection template](src/classroom-data-collection-template.csv) — adapt for other disciplines.
- [Improving progress dataset](src/datasets/improving-progress.csv)
- [Variable performance dataset](src/datasets/variable-performance.csv)
- [Possible plateau dataset](src/datasets/possible-plateau.csv)

No standalone XLSX workbook is included in this repository.

## Important safeguards

- Use fictional or synthetic information for course practice. Removing a name alone does not establish de-identification.
- For real work, use only specifically district-approved tools and data workflows; follow privacy, retention, sharing, and reporting requirements.
- Do not infer functional vision, communication, behavior, cognition, literacy, independence, or educational need from a diagnosis, eligibility label, test score, acuity, grades, or device ownership alone.
- Distinguish independent from prompted performance. Define valid opportunities, operational measures, accommodations, communication modes, and task conditions.
- The greater-than-90%-across-three-sessions rule is a configurable training convention, not an IDEA or universal legal standard.
- LLM output and spreadsheet flags are aids, not authorities. Verify claims, calculations, and sources.
- Copilot email triage is advisory. Review original messages and deadlines; do not permit autonomous send, delete, archive, or commitments.
- A decision not to use AI is appropriate when risk, privacy, accessibility, or task value makes it unsuitable.

## Build the book

Install [mdBook](https://rust-lang.github.io/mdBook/). From the repository root, run:

    mdbook build
    mdbook serve --open

The book configuration is in book.toml and chapter files are in src/. The GitHub Actions workflow at .github/workflows/mdbook.yml builds and deploys the book when changes are pushed to main. For first deployment, set repository Settings → Pages → Build and deployment → Source to GitHub Actions.

## Accessibility and release checks

The course is text-first. Essential content is not conveyed only through images or color. Tables should remain simple, and graph interpretation should have a text explanation. Before release, complete the [Accessibility and Release QA Checklist](src/accessibility-and-release-checklist.md). Verify internal links, rendered heading hierarchy, keyboard navigation, and representative content using the screen readers and access technologies used by participants. A successful mdBook build does not by itself establish accessibility; record the test environment and results.
