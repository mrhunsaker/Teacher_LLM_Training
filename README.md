# Special Education Professional Learning: Practical LLM Use

A ten-session professional-learning course for special education teachers, teachers of deaf and hard-of-hearing students, school psychologists, speech-language pathologists (SLPs), occupational therapists (OTs), physical therapists (PTs), adapted physical education (APE) teachers, general education teachers, related-service providers, and classroom partners.

The course teaches bounded, privacy-conscious use of large language models (LLMs) and Microsoft 365 Copilot for educational planning, related-service workflows, IEP-related preparation, observation, progress monitoring, data review, and professional communication. Participants select one fictional case from a unified Buendía-family collection and use it throughout the course. All ten cases have equal standing and follow the same learning pathway; no discipline is the default.

## Start here

1. Read the [Course Overview](my-book/src/summary.md).
2. Follow the [Course Map and Assessment Plan](my-book/src/course-map-and-assessment-plan.md). It is the definitive ten-session sequence and assessment schedule.
3. Read [Getting Started](my-book/src/getting-started.md).
4. Select one role-relevant case from the [unified Buendía-family case collection](my-book/src/multidisciplinary-case-studies.md).
5. Complete the assessments at the times specified in the course map.
6. Use the [Final Special Education Capstone Workbook](my-book/src/08-final-workbook.md) and [Practical Competency Checklist](my-book/src/practical-competency-checklist.md) to organize and review your work.

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

Sessions 1–6 are detailed in the [Self-Directed Practice Guide](my-book/src/self-directed-practice-guide.md). Sessions 7–10 are detailed in the [AI Literacy Self-Study Guide](my-book/src/ai-literacy-self-study-guide.md). Together, these guides provide the complete independent learning pathway.

## Assessment schedule

- **Before Session 1:** Applied-course pre-assessment.
- **Before Session 7:** AI-literacy pre-assessment.
- **During Session 10:** Independent performance capstone.
- **After Session 10:** Both parallel post-assessments.

The [Course Map and Assessment Plan](my-book/src/course-map-and-assessment-plan.md) explains how to interpret the assessments and distinguish their scoring systems. The competency checklist uses item-level 0–2 ratings for formative self-review and optional peer review. The capstone uses a separate 0–3 domain rubric. Do not combine the scores.

## The instructional design cycle

The course is built around **Plan → Refine → Build → Refine**, not one-shot prompt generation:

1. **Plan:** Define one educational or related-service question, meaningful task, context, learner strengths, facts, and unknowns.
2. **Refine:** Use the LLM to surface assumptions, missing information, and questions. The professional narrows and approves the plan.
3. **Build:** Draft one bounded artifact, such as a task analysis, observation form, communication-access check, or data summary.
4. **Refine:** Test the artifact, review evidence and learner/staff feedback, and revise it.

The professional remains responsible for decisions within their role. AI does not diagnose, determine eligibility, interpret standardized assessments in place of qualified professionals, decide placement or services, make IEP-team decisions, or replace clinical, instructional, or school-psychology judgment.

## Selecting a case

Choose one of the nine fictional cases in the [unified Buendía-family case collection](my-book/src/multidisciplinary-case-studies.md): José Arcadio (deaf and hard-of-hearing education), Aureliano (school psychology), Amaranta (speech-language pathology), Rebeca (mathematics reasoning), Arcadio (reading), Fernanda (occupational therapy), Petra (physical therapy), Melquíades (adaptive physical education), and Pilar (general-education Tier 3 reading intervention). These are equal options, not nine required assignments. Use one case throughout the modules and workbook. Each case identifies known facts, unknowns, a bounded practice task, and professional boundaries.

## Participant and self-directed learning resources

- [Participant Lesson Handouts](my-book/src/participant-lesson-handouts.md)
- [Participant Pre- and Post-Assessment](my-book/src/participant-assessments.md)
- [AI Literacy and Misconception Assessment](my-book/src/ai-literacy-assessment.md)
- [Practical Competency Checklist](my-book/src/practical-competency-checklist.md)
- [Reusable Prompt Library](my-book/src/prompt-library.md)
- [Hands-on Practice Labs](my-book/src/practice-labs.md)
- [Privacy, Responsible Use, and District Implementation](my-book/src/responsible-use-and-implementation.md)
- [References and Further Learning](my-book/src/references.md)
- [Accessibility and Release QA Checklist](my-book/src/accessibility-and-release-checklist.md)

## Workbook and spreadsheet files

The [Final Special Education Capstone Workbook](my-book/src/08-final-workbook.md) is a text-based Markdown workbook within the course. It is not a separate Excel file. CSV files provide spreadsheet-ready practice data and templates:

- [Synthetic example progress-monitoring data](my-book/src/progress-monitoring-example.csv)
- [Classroom data-collection template](my-book/src/classroom-data-collection-template.csv) — adapt for other disciplines.
- [Improving progress dataset](my-book/src/datasets/improving-progress.csv)
- [Variable performance dataset](my-book/src/datasets/variable-performance.csv)
- [Possible plateau dataset](my-book/src/datasets/possible-plateau.csv)

No standalone XLSX workbook is included in this repository.

## Important safeguards

- Use fictional or synthetic information for course practice. Removing a name alone does not establish de-identification.
- For real work, use only specifically district-approved tools and data workflows; follow privacy, retention, sharing, and reporting requirements.
- Do not infer communication, behavior, cognition, literacy, independence, or educational need from a diagnosis, eligibility label, test score, grades, or device ownership alone.
- Distinguish independent from prompted performance. Define valid opportunities, operational measures, accommodations, communication modes, and task conditions.
- The greater-than-90%-across-three-sessions rule is a configurable training convention, not an IDEA or universal legal standard.
- LLM output and spreadsheet flags are aids, not authorities. Verify claims, calculations, and sources.
- Copilot email triage is advisory. Review original messages and deadlines; do not permit autonomous send, delete, archive, or commitments.
- A decision not to use AI is appropriate when risk, privacy, accessibility, or task value makes it unsuitable.

## Create or update participant documents

The editable Word documents are generated from Markdown source files.

1. Edit or add a source document in `my-book/handouts/markdown/`.
2. Use a descriptive filename ending in `.md`. Keep participant-facing language in the source file.
3. From the repository root, run:

       python -m pip install python-docx
       python my-book/handouts/scripts/build_handouts.py

4. The matching Word files are written to `my-book/handouts/docx/`. Open the DOCX files in Microsoft Word or a compatible editor to review layout, page breaks, tables, and print formatting before distribution.
5. Commit both the Markdown source and its generated DOCX. GitHub Actions also regenerates DOCX files when the source files or generator change.

The generator processes every Markdown file in `my-book/handouts/markdown/`. The handout index at `my-book/handouts/README.md` lists the participant-facing documents and download locations.

## Build and preview the mdBook

Install [mdBook](https://rust-lang.github.io/mdBook/) using the instructions for your operating system. The book configuration is `my-book/book.toml`; the navigation and chapter content are maintained in `my-book/src/SUMMARY.md` and `my-book/src/`.

From the repository root, run:

    cd my-book
    mdbook build

The generated website is written to `my-book/docs/`. To open a local preview in your browser, run:

    mdbook serve --open

Keep that terminal running while reviewing the book. mdBook serves a local preview and refreshes it when source files change. Stop the preview with Ctrl+C.

To return to the repository root after building, run `cd ..`. The GitHub Actions workflow at `.github/workflows/mdbook.yml` builds and deploys the book when changes are pushed to `main`. For first deployment, set repository Settings → Pages → Build and deployment → Source to GitHub Actions.


## Build the companion PDF

The repository includes Bash and PowerShell build entry points. The PDF build reads the chapter list and order directly from `my-book/docs/pandoc/pdf/src/SUMMARY.md`; add, remove, or reorder links there rather than editing a chapter list in the build scripts.

1. Copy `.env.example` to `.env` in the repository root.
2. Set `PANDOC_DATA_DIR` to the Pandoc data directory that contains the `templates/` folder. For example, on macOS this may be `/Users/your-user/.local/share/pandoc`.
3. Ensure the Eisvogel template is installed as `templates/eisvogel.latex` inside that directory.
4. Install Pandoc and XeLaTeX (or the PDF engine configured by `PDF_ENGINE`) and make their executables available on `PATH`.
5. Run `./mdbook_generate.sh` on macOS/Linux or `./mdbook_generate.ps1` in PowerShell.

The mdBook HTML output is built first, followed by `my-book/docs/pandoc/pdf/TeacherLLMTraining.pdf`. To build only the PDF, run `./pandoc_generate.sh` or `./pandoc_generate.ps1`. The local `.env` file is ignored by Git; commit configuration changes only to `.env.example`, never to `.env`.

The PDF sources in `my-book/docs/pandoc/pdf/src/` are Pandoc native-format documents despite their `.md` extensions, so the PDF script explicitly reads them with Pandoc's `native` reader.

## Accessibility and release checks

The course is text-first. Essential content is not conveyed only through images or color. Tables should remain simple, and graph interpretation should have a text explanation. Before release, complete the [Accessibility and Release QA Checklist](my-book/src/accessibility-and-release-checklist.md). Verify internal links, rendered heading hierarchy, keyboard navigation, and representative content using the screen readers and access technologies used by participants. A successful mdBook build does not by itself establish accessibility; record the test environment and results.


## Standalone participant handouts

The participant handout collection is also distributed as **nine individual handouts plus one reusable session-close sheet**, each in two formats:

- [Handout index and download links](my-book/handouts/README.md) — complete file-by-file inventory.
- [Editable Word documents (DOCX)](my-book/handouts/docx/) — ready to open, edit, print, and distribute.
- [Individual Markdown source files](my-book/handouts/markdown/) — source files for generating other formats or tailoring materials.
- [Generation script](my-book/handouts/scripts/build_handouts.py) — regenerates the DOCX files from the Markdown sources.

The consolidated [Participant Lesson Handouts](my-book/src/participant-lesson-handouts.md) chapter remains in the mdBook. The standalone files are companion resources, not additional lessons. Markdown is the source of truth for the generated Word files; run `python my-book/handouts/scripts/build_handouts.py` from the repository root after editing a source file. GitHub Actions also regenerates DOCX files when handout sources or the generator change.
