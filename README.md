# Teacher LLM Training: Expanded Core Curriculum

A practical, screen-reader-conscious professional learning resource for teachers of students with visual impairments (TVIs), classroom teachers, and related-service colleagues.

This repository teaches educators to use large language models (LLMs) and Microsoft 365 Copilot as bounded productivity tools for Expanded Core Curriculum (ECC) instruction, IEP planning, progress monitoring, and email organization. It includes the original course chapters and capstone workbook, plus a facilitator-ready six-session edition, prompt library, practice labs, fictional student cases, synthetic datasets, and implementation safeguards.

## Start here

1. Read [Getting Started](src/getting-started.md).
2. Facilitators: open the [six-session Facilitator and Practice Edition](src/facilitator-practice-edition.md).
3. Use the [Prompt Library](src/prompt-library.md) and [Hands-on Practice Labs](src/practice-labs.md).
4. Apply the workflow to Maya or the [additional fictional student cases](src/practice-student-cases.md).
5. Complete the [Final ECC Capstone Workbook](src/08-final-workbook.md).

Use only fictional or properly approved de-identified practice data in AI tools. Follow district policy and approved systems for education records.

## What is included

- Six ready-to-run lessons with objectives, preparation, timed agendas, demonstrations, participant artifacts, evidence of learning, and exit tickets.
- Reusable prompts for student/task analysis, goal development, task analysis, data analysis, instructional refinement, and email triage.
- Five hands-on labs covering bounded prompting, goal development, data analysis, simulated Copilot email triage, and the full Plan → Refine → Build → Refine cycle.
- Four additional fictional student cases spanning dual-media literacy, digital access, orientation and mobility, and self-determination. Maya remains the shared worked example.
- Three synthetic CSV datasets: improving progress, variable performance, and possible plateau.
- Instructor notes, competency rubric, final evidence portfolio, privacy checklist, district implementation guidance, and responsible-use guidance.

## Accessibility commitments

- Images are minimized; essential information is provided as text.
- Tables are simple Markdown tables with one header row and no merged or nested cells.
- No information is conveyed by color alone.
- Exercises include written alternatives to graph interpretation.
- CSV datasets are plain text.
- Prompts request semantic headings, concise numbered steps, and text descriptions.
- Facilitators should test locally added materials with the access technologies used by participants.

## Core instructional cycle

1. **Plan:** Define the meaningful ECC task, setting, strengths, known facts, and unknowns.
2. **Refine:** Challenge assumptions, identify missing observations, and narrow the target.
3. **Build:** Create one bounded artifact, such as a task analysis, observation form, or checklist.
4. **Refine:** Test with the learner and team, examine evidence, and revise.

The educator remains responsible for every instructional decision. The model must not move to the next stage without direction.

## Safeguards

- AI output is a draft for professional review, not an IEP decision, evaluation, diagnosis, or substitute for team discussion.
- Use only district-approved tools and follow applicable privacy and retention requirements. Removing a name alone may not de-identify a student.
- Greater than 90% accuracy across at least three separate sessions is a configurable training exercise, not a universal legal or IEP standard.
- Separate independent accuracy from prompted performance; record accommodations, conditions, and valid opportunities.
- Spreadsheet flags are calculations, not mastery determinations.
- Copilot email triage is advisory. Verify original messages and deadlines; do not allow AI to send, delete, archive, or commit actions without approved human review.
- Do not infer functional vision, literacy media, or instructional needs from acuity or grades alone.

## Build the book

Install [mdBook](https://rust-lang.github.io/mdBook/). From the repository root:

```bash
mdbook build
mdbook serve --open
```

GitHub Actions is configured to build and deploy on pushes to `main`. To enable deployment, set repository **Settings → Pages → Build and deployment → Source** to **GitHub Actions**. A successful deployment URL appears in repository Pages settings.

## Intended audience

No programming experience is required. Familiarity with IEPs and the ECC is helpful. Participants need a district-approved LLM for live practice or can use the offline peer-review alternatives. Microsoft Copilot features vary by license, tenant configuration, application version, and administrator settings.
