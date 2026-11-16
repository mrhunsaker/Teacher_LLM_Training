# Standalone Participant Handouts

This collection contains **nine individual participant handouts plus one reusable session-close sheet**. Each item is provided as an individual Markdown source file and an editable Microsoft Word document.

## Use the files

- **DOCX:** Open the corresponding file in Microsoft Word or a compatible editor. The DOCX files are generated from the Markdown sources and are intended for editing, printing, and distribution.
- **Markdown:** Use the individual source files to generate other formats or adapt a handout for a particular participant or professional role.
- **Course packet:** The complete packet remains in [Participant Lesson Handouts](../src/participant-lesson-handouts.md) in the mdBook.

## Individual handouts

| Handout | Markdown source | Word document |
|---|---|---|
| Handout 1 | [handout-01-bounded-prompt-planner.md](markdown/handout-01-bounded-prompt-planner.md) | [handout-01-bounded-prompt-planner.docx](docx/handout-01-bounded-prompt-planner.docx) |
| Handout 2 | [handout-02-plan-and-refine-brief.md](markdown/handout-02-plan-and-refine-brief.md) | [handout-02-plan-and-refine-brief.docx](docx/handout-02-plan-and-refine-brief.docx) |
| Handout 3 | [handout-03-goal-and-measurement-planner.md](markdown/handout-03-goal-and-measurement-planner.md) | [handout-03-goal-and-measurement-planner.docx](docx/handout-03-goal-and-measurement-planner.docx) |
| Handout 4 | [handout-04-build-and-test-artifact.md](markdown/handout-04-build-and-test-artifact.md) | [handout-04-build-and-test-artifact.docx](docx/handout-04-build-and-test-artifact.docx) |
| Handout 5 | [handout-05-data-review-and-refinement.md](markdown/handout-05-data-review-and-refinement.md) | [handout-05-data-review-and-refinement.docx](docx/handout-05-data-review-and-refinement.docx) |
| Handout 6 | [handout-06-copilot-action-report-and-reflection.md](markdown/handout-06-copilot-action-report-and-reflection.md) | [handout-06-copilot-action-report-and-reflection.docx](docx/handout-06-copilot-action-report-and-reflection.docx) |
| Handout 7 | [handout-07-ai-output-review.md](markdown/handout-07-ai-output-review.md) | [handout-07-ai-output-review.docx](docx/handout-07-ai-output-review.docx) |
| Handout 8 | [handout-08-critical-review-record.md](markdown/handout-08-critical-review-record.md) | [handout-08-critical-review-record.docx](docx/handout-08-critical-review-record.docx) |
| Handout 9 | [handout-09-independent-capstone-evidence.md](markdown/handout-09-independent-capstone-evidence.md) | [handout-09-independent-capstone-evidence.docx](docx/handout-09-independent-capstone-evidence.docx) |
| Reusable session close | [reusable-session-close.md](markdown/reusable-session-close.md) | [reusable-session-close.docx](docx/reusable-session-close.docx) |

## Additional participant resource

The practical competency checklist is also generated as an editable Word document: [practical-competency-checklist.docx](docx/practical-competency-checklist.docx). Its source is maintained at [practical-competency-checklist.md](markdown/practical-competency-checklist.md). Participants should use the DOCX rather than the Markdown source.

## Document generation

The Word files are generated from the Markdown sources by `scripts/build_handouts.py` using `python-docx`. Re-run the script after editing a source file to regenerate its matching DOCX.

## Content and privacy safeguards

Use fictional or district-approved information only. Do not place identifiable student or staff information in an unapproved system. The handouts support professional planning and reflection; they do not delegate diagnosis, eligibility, IEP, service, or other professional decisions to an LLM.
