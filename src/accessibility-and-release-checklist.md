# Accessibility and Release QA Checklist

Use this checklist on the rendered mdBook before publishing a release. A successful mdBook build is necessary but does not prove that the book is accessible. Record the actual browser, operating system, assistive technology, and test results. Do not mark a check complete unless someone has performed it.

## 1. Build and link checks

- [ ] Run mdbook build from the repository root and confirm the command exits successfully.
- [ ] Review the build output for warnings or errors.
- [ ] Open the rendered book and follow every internal link in the course overview, navigation, course map, case studies, assessments, handouts, and workbook.
- [ ] Confirm CSV links open or download as intended.
- [ ] Confirm external links lead to the intended authoritative or product documentation source.

## 2. Structure and navigation

- [ ] Each page has one clear page title and a logical heading hierarchy.
- [ ] Headings describe the content that follows and are not used only for visual styling.
- [ ] The mdBook table of contents follows the learner journey: overview, course map, getting started, Sessions 1–10, cases, workbook, participant resources, facilitator resources.
- [ ] Link text is descriptive and understandable out of context; avoid "click here" or raw URLs as the only label.
- [ ] Keyboard users can reach and activate navigation, links, and interactive elements in a logical order.
- [ ] Keyboard focus is visible and is not trapped.
- [ ] Browser zoom to 200% does not hide essential content or require two-dimensional scrolling for ordinary text.

## 3. Screen-reader and nonvisual review

Test representative content with the screen reader(s) used by the intended participants.

- [ ] Course navigation and heading navigation are understandable.
- [ ] Numbered steps, checklists, and nested lists are announced in a logical order.
- [ ] Simple Markdown tables have meaningful headers and can be navigated without losing row/column context.
- [ ] Assessment questions, scoring guidance, and response instructions are understandable without visual layout.
- [ ] Workbook tables and fill-in prompts can be read and completed in a logical sequence.
- [ ] Graphs and spreadsheet outputs have written explanations of the data pattern and the conclusion limits.
- [ ] Essential meaning is not conveyed only by color, position, images, or visual formatting.

## 4. Discipline-specific access review

- [ ] Vision/ECC examples preserve the distinction between print, braille, magnification, O&M, assistive technology, and student preference.
- [ ] Deaf and hard-of-hearing examples preserve communication access, communication mode, and agreed supports.
- [ ] Speech-language examples recognize spoken language, AAC, and other valid communication modes.
- [ ] Academic examples distinguish the specific skill being measured rather than treating reading or mathematics as one undifferentiated score.
- [ ] Any real participant-created artifact is checked with the access technology and communication methods relevant to its intended users.

## 5. Release record

**Reviewer:**  
**Date:**  
**Operating system and version:**  
**Browser and version:**  
**Screen reader / access technology and version:**  
**Keyboard-only test completed:** Yes / No  
**mdBook build result:** Pass / Fail / Not run  
**Internal-link review result:** Pass / Issues found / Not run  

**Issues found and page locations:**  

**Corrections made:**  

**Remaining limitations or follow-up actions:**  

**Release decision:** Ready / Ready with documented limitations / Not ready

Do not claim accessibility conformance from this checklist alone. It is a practical quality-assurance record, not a formal accessibility audit or certification.
