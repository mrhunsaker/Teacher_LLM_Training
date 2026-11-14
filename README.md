# Teacher LLM Training: Expanded Core Curriculum

A practical, step-by-step professional learning resource for teachers of students with visual impairments (TVIs), classroom teachers, and related-service colleagues.

This repository teaches educators how to use large language models (LLMs) and Microsoft 365 Copilot as bounded productivity tools for Expanded Core Curriculum (ECC) instruction, IEP planning, progress monitoring, and email organization. It is written for educators who may be new to AI and spreadsheets.

## Start here

1. Open the published book (or build it locally with mdBook).
2. Read [Getting started](src/getting-started.md).
3. Work through the modules in order. Each module includes a learning target, plain-language explanation, a guided workflow, copy-ready prompts, practice, and a quality check.
4. Use only fictional or properly de-identified practice data in general-purpose AI tools. Follow district policy and approved Microsoft 365 services for any education records.

## Curriculum map

| Module | What you will learn | Product |
|---|---|---|
| 1. Prompting | Give an LLM a narrow role, task, boundaries, and output format | Reusable prompt |
| 2. IEP brainstorming | Use de-identified baseline data to brainstorm measurable ECC goals and objectives | Draft goal options and measurement plan |
| 3. Data collection | Create aligned TVI and classroom data sheets | Two collection forms |
| 4. Excel progress monitoring | Enter data, graph performance, and calculate a provisional criterion flag | Excel-ready tracker |
| 5. Instructional decisions | Interpret trend, variability, generalization, and possible plateau | Data review and next-step record |
| 6. Copilot email workflow | Build a morning email triage routine with dates, actions, and 1–5 priority | Reusable Copilot prompt and checklist |

## Important safeguards

- **Teacher remains the decision-maker.** AI output is a draft for professional review, not an IEP decision, evaluation, diagnosis, or substitute for team discussion.
- **Privacy comes first.** Do not paste names, initials, birth dates, student IDs, school names, addresses, images, exact schedules, or combinations of details that could identify a student. Use only district-approved systems and follow local policy, FERPA requirements, and data-retention rules.
- **Do not treat 90% as a universal legal standard.** This training uses a configurable practice convention of greater than 90% accuracy across at least three separate data-collection sessions because that is the requested training criterion. The IEP team must select criteria that are educationally appropriate, defensible, and individualized.
- **Separate accuracy from independence.** Record prompt level, accommodations, task conditions, and opportunities. A 95% score with full physical prompting is not equivalent to 95% independent performance.
- **A spreadsheet flag is not an IEP determination.** It only applies a stated rule to entered data. Verify formulas, data quality, and context before acting.
- **Email triage is advisory.** Copilot can miss messages, dates, or context. Verify the original thread and district deadlines; do not allow AI to send, delete, archive, or promise a response without your review.

## Build the book

Install [mdBook](https://rust-lang.github.io/mdBook/). From the repository root, run:

```bash
mdbook build
mdbook serve --open
```

The book configuration is in `book.toml`; all chapter files are in `src/`.

## Repository structure

```text
.
├── README.md
├── book.toml
└── src/
    ├── SUMMARY.md
    ├── summary.md
    ├── getting-started.md
    ├── 01-prompting.md
    ├── 02-iep-goals.md
    ├── 03-data-collection.md
    ├── 04-excel-monitoring.md
    ├── 05-data-based-decisions.md
    ├── 06-copilot-email.md
    └── references.md
```

## Intended audience and prerequisites

No programming experience is required. Familiarity with IEPs and the ECC is helpful. You will need access to a district-approved LLM for practice and Microsoft Excel for spreadsheet activities. Microsoft Copilot features vary by district license, tenant configuration, app version, and administrator settings; use the options your district has enabled.

## Suggested pacing

A six-session sequence of 60–90 minutes each works well. Each session can also be split into shorter team meetings. Complete the practice with fictional data before adapting the workflow to real work under district-approved systems.
