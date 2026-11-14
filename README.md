# Special Education Professional Learning: Practical LLM Use

A practical, step-by-step professional learning resource for special education professionals: special education teachers, teachers of students with visual impairments (TVIs), teachers of deaf and hard-of-hearing students, school psychologists, speech-language pathologists (SLPs), related-service providers, classroom teachers, and multidisciplinary teams.

This repository teaches special education professionals how to use large language models (LLMs) and Microsoft 365 Copilot as bounded productivity tools for individualized instruction, related-service workflows, IEP-related preparation, progress monitoring, data review, and professional communication. The ECC and vision case remain included, but participants from any special education discipline can select a relevant fictional case and proceed through the modules. It is written for professionals who may be new to AI and spreadsheets.

## Start here

1. Open the published book (or build it locally with mdBook).
2. Read [Getting started](src/getting-started.md).
3. Work through the modules in order. Choose the [Aureliano Buendia vision/ECC case](src/07-fictional-student-case.md) or a [multidisciplinary special education case](src/multidisciplinary-case-studies.md) that fits your role. Use that case to practice the full **Plan → Refine → Build → Refine** cycle.
4. Complete the [Final Special Education Capstone Workbook](src/08-final-workbook.md), adapting it to the learner, instructional or related-service task, and professional scope you are addressing.
5. Use only fictional or properly de-identified practice data in general-purpose AI tools. Follow district policy and approved Microsoft 365 services for any education records.

## Curriculum map

| Module | What you will learn | Product |
|---|---|---|
| 1. Prompting | Give an LLM a narrow role, task, boundaries, and output format | Reusable prompt |
| 2. IEP brainstorming | Use approved, minimum-necessary information or synthetic data to brainstorm measurable educational goals and objectives | Draft goal options and measurement plan |
| 3. Data collection | Create aligned observation and progress-monitoring tools for the relevant discipline and classroom partners | Data-collection tools |
| 4. Excel progress monitoring | Enter data, graph performance, and calculate a provisional criterion flag | Excel-ready tracker |
| 5. Instructional decisions | Interpret trend, variability, generalization, and possible plateau | Data review and next-step record |
| 6. Copilot email workflow | Build a morning email triage routine with dates, actions, and 1–5 priority | Reusable Copilot prompt and checklist |
| Case studies | Apply the cycle to a role-relevant fictional case in vision/ECC, deaf and hard-of-hearing education, school psychology, speech-language pathology, mathematics reasoning, or reading | Iterative planning artifacts and revision log |
| Final workbook | Apply the process to a relevant special education or related-service task | Completed planning workbook, aligned tool, data plan, and revision log |

## The instructional design cycle

The course is built around **Plan → Refine → Build → Refine**, not one-shot prompt generation:

1. **Plan:** The professional defines the educational or related-service question, task, setting, learner strengths, known facts, and unknowns.
2. **Refine:** The teacher uses the LLM to question assumptions, identify missing observations, and narrow the target. The teacher corrects and approves the plan.
3. **Build:** The LLM helps draft one practical artifact, such as a task analysis, observation form, or practice checklist.
4. **Refine:** The teacher tests the artifact, reviews student and staff feedback and collected data, then revises the tool or instructional plan.

The educator or qualified service provider remains responsible for decisions within their professional role; IEP-team and multidisciplinary decisions remain with the authorized team. The model must not move to the next stage without direction.

## Selecting a case

Use the case study closest to your role and current professional work. The [vision/ECC case](src/07-fictional-student-case.md) remains a detailed worked example. The [multidisciplinary case library](src/multidisciplinary-case-studies.md) adds cases for teachers of deaf and hard-of-hearing students, school psychologists, SLPs, and educators supporting students with specific learning disabilities in mathematics reasoning or reading. Participants should work within their own scope of practice and identify when consultation or team decision-making is required.

## Important safeguards

- **Teacher remains the decision-maker.** AI output is a draft for professional review, not an IEP decision, evaluation, diagnosis, or substitute for team discussion.
- **Privacy comes first.** Do not paste names, initials, birth dates, student IDs, school names, addresses, images, exact schedules, or combinations of details that could identify a student. Use only district-approved systems and follow local policy, FERPA requirements, and data-retention rules.
- **Do not treat 90% as a universal legal standard.** This training uses a configurable practice convention of greater than 90% accuracy across at least three separate data-collection sessions because that is the requested training criterion. The IEP team must select criteria that are educationally appropriate, defensible, and individualized.
- **Separate accuracy from independence.** Record prompt level, accommodations, task conditions, and opportunities. A 95% score with full physical prompting is not equivalent to 95% independent performance.
- **A spreadsheet flag is not an IEP determination.** It only applies a stated rule to entered data. Verify formulas, data quality, and context before acting.
- **Email triage is advisory.** Copilot can miss messages, dates, or context. Verify the original thread and district deadlines; do not allow AI to send, delete, archive, or promise a response without your review.
- **Do not infer a student's functional vision or literacy needs from acuity or grades alone.** Use appropriate assessment, observations across environments, student and family input, and the learning media plan. Keep braille, print, magnification, O&M, and other access methods coordinated but distinct.

## Build the book

Install [mdBook](https://rust-lang.github.io/mdBook/). From the repository root, run:

```bash
mdbook build
mdbook serve --open
```

The book configuration is in `book.toml`; all chapter files are in `src/`. A GitHub Actions workflow at `.github/workflows/mdbook.yml` builds and deploys the book whenever changes are pushed to `main`. To enable the first deployment, open the repository's **Settings → Pages** and set **Build and deployment → Source** to **GitHub Actions**. The Pages URL will appear in the repository's Pages settings after a successful deployment.

## Repository structure

```text
.
├── .github/
│   └── workflows/
│       └── mdbook.yml
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
    ├── 07-fictional-student-case.md
    ├── 08-final-workbook.md
    ├── references.md
    ├── progress-monitoring-example.csv
    ├── tvi-data-collection-template.csv
    └── classroom-data-collection-template.csv
```

## Intended audience and prerequisites

No programming experience is required. Familiarity with IEPs and the ECC is helpful. You will need access to a district-approved LLM for practice and Microsoft Excel for spreadsheet activities. Microsoft Copilot features vary by district license, tenant configuration, app version, and administrator settings.

## Suggested pacing

A six-session applied sequence of 60–90 minutes each works well, followed by the four AI-literacy modules. Participants select a role-relevant case from the case library; the Aureliano Buendia vision/ECC case remains available as a detailed worked example. Each session can also be split into shorter team meetings. Complete the practice with fictional data before adapting the workflow to real work under district-approved systems.

## Multidisciplinary case studies

The [multidisciplinary case library](src/multidisciplinary-case-studies.md) adds fictional profiles for deaf and hard-of-hearing education, school psychology, speech-language pathology, mathematics reasoning, and reading. Use the case that best fits your role and scope of practice. The original [Aureliano Buendia vision/ECC case](src/07-fictional-student-case.md) is retained.

## Facilitator and practice edition

This branch adds a six-session facilitator-ready course with objectives, timed agendas, demonstrations, participant artifacts, evidence of learning, and exit tickets. It also adds a [reusable prompt library](src/prompt-library.md), [five practice labs](src/practice-labs.md), [additional fictional student cases](src/practice-student-cases.md), three synthetic CSV datasets, a [competency rubric and portfolio](src/facilitator-practice-edition.md), and [privacy and district implementation guidance](src/responsible-use-and-implementation.md).

## Accessibility commitments

The new practice materials are text-first and designed to remain usable with screen readers and keyboard navigation. Images are minimized; essential content is text. Tables are simple Markdown tables with one header row and no merged or nested cells. No information is conveyed by color alone. Graph activities include written data interpretation. CSV datasets are plain text. Facilitators should test locally added materials with the access technologies used by participants.


## Participant-ready package

The participant package adds a [parallel pre- and post-assessment](src/participant-assessments.md) with scoring and facilitator notes, [six lesson handouts](src/participant-lesson-handouts.md), and a [practical competency checklist](src/practical-competency-checklist.md). All three are linked in the [course overview and complete resource index](src/summary.md) and in the mdBook navigation. The assessment measures scenario-based reasoning; it is not a credential or employment evaluation.


## AI literacy and critical-evaluation extension

The course now adds four modules: [AI Literacy Foundations](src/09-ai-literacy-foundations.md), [AI Misconceptions and Failure Analysis](src/10-misconceptions-and-failure-analysis.md), [Critical Evaluation Lab](src/11-critical-evaluation-lab.md), and [Independent Performance Capstone](src/12-independent-performance-capstone.md). Supporting materials include an [AI literacy assessment](src/ai-literacy-assessment.md) and a [facilitator implementation guide](src/ai-literacy-facilitator-guide.md). These resources explicitly teach why fluent AI output can be wrong, how to identify unsupported claims, how to verify sources and calculations, how to test accessibility, and when not to use AI.

The original six applied lessons remain intact. The four new modules can be delivered as four additional sessions or as a two-session extension. See the [complete course overview and resource index](src/summary.md) and [mdBook navigation](src/SUMMARY.md) for all chapters and supporting files.

**Readiness note:** The capstone assesses performance on a fictional scenario under course conditions. It does not by itself prove transfer to practice or certify professional competence. Pilot the course and conduct a follow-up transfer check before making effectiveness claims.
