[RawBlock (Format "latex") "\\bookmarksetup{{startatroot}}", Header 1 ("reusable-prompt-library", ["unnumbered"], []) [Str "Reusable Prompt Library"], Para [Str "Use these prompts with fictional or district-approved information only. Replace bracketed text before use. Each prompt is limited to a defined task and requires professional review before any decision or implementation. Do not paste identifiable student or staff information into an unapproved system."], Header 2 ("how-to-use-the-qa-format", ["unnumbered", "unlisted"], []) [Str "How to use the Q&A format"], Para [Str "Every prompt type below includes a short, task-specific Q&A intake. The model should interview the professional before producing the requested artifact."], OrderedList (1, DefaultStyle, DefaultDelim) [[Plain [Str "Paste the prompt and provide only the information already known."]], [Plain [Str "The model asks ", Strong [Str "one focused question at a time"], Str ". Answer it, or say \"unknown\" or \"not applicable.\" Do not guess to satisfy the interview."]], [Plain [Str "The model continues only with questions that materially affect the requested output. It should not repeat information already supplied."]], [Plain [Str "When intake is complete, the model presents a concise ", Strong [Str "Q&A confirmation"], Str ": each important question paired with the professional's answer, plus a separate list of unknowns and assumptions."]], [Plain [Str "Correct the confirmation. The model must wait for approval before creating the deliverable."]], [Plain [Str "Review the result, verify facts and calculations, and retain professional decision authority."]]], Para [Str "If the user asks for a direct response without an interview, the model may proceed using supplied information, but it must identify gaps rather than invent answers. Q&A is a way to clarify the task, not a substitute for evidence, student/family input, observation, or team decisions."], Header 2 ("choose-a-prompt", ["unnumbered", "unlisted"], []) [Str "Choose a prompt"], OrderedList (1, DefaultStyle, DefaultDelim) [[Plain [Strong [Str "Bounded prompt and task specification:"], Str " define role, task, context, constraints, output, and stop condition."]], [Plain [Strong [Str "Student, learner, and task analysis:"], Str " separate facts, unknowns, hypotheses, and questions."]], [Plain [Strong [Str "Goal or outcome development:"], Str " brainstorm measurable options for professional review."]], [Plain [Strong [Str "Task analysis and instructional sequence:"], Str " break an activity into observable steps."]], [Plain [Strong [Str "Data-collection tool design:"], Str " align operational definitions, opportunities, prompts, and recording methods."]], [Plain [Strong [Str "Data analysis and progress review:"], Str " check calculations and describe patterns without overclaiming."]], [Plain [Strong [Str "Instructional refinement:"], Str " compare an artifact with test evidence and propose small revisions."]], [Plain [Strong [Str "Lesson, material, or activity adaptation:"], Str " improve alignment, usability, differentiation, and accessibility."]], [Plain [Strong [Str "Accommodation and access-planning review:"], Str " organize task-specific barriers, supports to investigate, and evidence still needed."]], [Plain [Strong [Str "Behavior or participation pattern review:"], Str " organize observable antecedents, actions, consequences, context, and questions without diagnosing or prescribing."]], [Plain [Strong [Str "Rubric, checklist, or performance-criteria design:"], Str " make success criteria observable and usable."]], [Plain [Strong [Str "Family or caregiver communication draft:"], Str " prepare clear, respectful, human-reviewed communication."]], [Plain [Strong [Str "Meeting preparation and decision log:"], Str " organize questions, evidence, options, and follow-up responsibilities."]], [Plain [Strong [Str "Email action report:"], Str " summarize possible actions without changing mailbox content."]], [Plain [Strong [Str "Source and claim verification:"], Str " check claims, references, dates, and evidence quality."]], [Plain [Strong [Str "Spreadsheet and calculation quality check:"], Str " audit formulas, denominators, data handling, and interpretations."]], [Plain [Strong [Str "Implementation or project plan:"], Str " define a bounded sequence, roles, dependencies, and review points."]], [Plain [Strong [Str "Reflection and professional learning:"], Str " turn experience into evidence-based next steps."]], [Plain [Strong [Str "Refinement prompt:"], Str " challenge an existing response before rewriting it."]], [Plain [Strong [Str "Prompt-design interview:"], Str " collaboratively assemble a task-specific prompt."]], [Plain [Strong [Str "Universal review checklist:"], Str " verify quality before retaining or sharing an output."]]], Para [Str "Use one prompt at a time. Do not ask the model to complete the entire Plan → Refine → Build → Refine cycle in a single response."], Header 2 ("1-bounded-prompt-and-task-specification", ["unnumbered", "unlisted"], []) [Str "1. Bounded prompt and task specification"], CodeBlock ("", ["text"], []) "Act as a prompt-design assistant. Do not perform the task until I approve
the Q&A confirmation.

Q&A INTAKE — ask one question at a time:
- What is my professional role and scope?
- What single task should the prompt support, and why?
- Who will use or read the output?
- What context and source material are relevant?
- What must the model not do?
- What output format, length, and accessibility requirements apply?
- What needs independent verification, and where should the model stop?

After the interview, show a Q&A confirmation with my answers, unknowns,
and assumptions. Ask me to approve or correct it.

ROLE
Act as a planning and drafting assistant for a special education professional.
My role and scope of practice are: [state role]. Do not act as an evaluator,
diagnostician, IEP decision-maker, or legal authority.

TASK
Complete one task: [specific task and purpose].

CONTEXT
Use only these relevant facts: [brief de-identified information].
Audience: [professional, student, family, classroom team, or other audience].
Task and setting: [relevant conditions].

BOUNDARIES
- Do not invent facts or infer skills from diagnosis, eligibility, test score,
  grades, or device ownership.
- Separate provided facts, hypotheses, and unknowns.
- Identify information needed before recommending an approach.
- Offer options and trade-offs rather than a single prescribed answer.
- Do not complete adjacent tasks.
- Keep professional and team decisions with educators.

OUTPUT
Return: [format, headings, length, intended audience].
Use accessible text; do not rely on images or color-only cues.

QUALITY CHECK
List assumptions, uncertainties, accessibility risks, and claims
requiring independent verification.

STOP CONDITION
Stop after [specific deliverable]. Ask before proceeding.
", Header 2 ("2-student-learner-and-task-analysis", ["unnumbered", "unlisted"], []) [Str "2. Student, learner, and task analysis"], CodeBlock ("", ["text"], []) "Before analyzing, conduct a brief Q&A intake. Ask one question at a time:
- What meaningful task or participation outcome are we examining?
- What facts are directly documented or observed?
- In what setting and under what conditions?
- What does the learner say is helpful, difficult, or important?
- Which relevant people or professionals have information we do not?
- What decisions must remain outside this analysis?

Show a Q&A confirmation and list unknowns separately. Wait for approval.

Analyze this fictional or approved de-identified profile:
Profile: [relevant facts]
Task and purpose: [meaningful activity and setting]

Return:
1. Facts explicitly stated and their sources.
2. Unknowns that cannot be inferred.
3. Hypotheses worth investigating, clearly labeled.
4. Questions for the learner, family, relevant service providers, classroom
   teacher, or related-service staff.
5. Possible task, environmental, communication, or access variables to observe.
6. Possible educational or related-service connections and a reason for each.
7. Evidence needed before selecting an instructional target.

Do not infer communication, behavior, cognition, motivation, independence,
or academic skill from diagnosis, eligibility label, test score, grades, or
device ownership. Do not recommend reducing or replacing services.
Do not write a goal yet. Stop after the analysis.
", Header 2 ("3-goal-or-outcome-development-and-measurement", ["unnumbered", "unlisted"], []) [Str "3. Goal or outcome development and measurement"], CodeBlock ("", ["text"], []) "Start with Q&A. Ask one question at a time:
- What meaningful skill, behavior, or participation outcome is being considered?
- What baseline observations exist, over how many sessions and opportunities?
- How are independent, prompted, and incomplete responses defined?
- Under what conditions was performance measured?
- What measurement method and criterion are appropriate to consider?
- Who will review and approve any final target?

Summarize answers and unknowns in Q&A format. Wait for my approval.

Context: [task, setting, relevant facts]
Baseline: [sessions, opportunities, independent and prompted performance,
conditions, and notes]

Please:
1. State whether baseline information is sufficient to brainstorm options.
2. List missing information.
3. Draft up to three alternative target statements.
4. For each, identify observable behavior, conditions, opportunities,
   prompt/independence definition, measurement method, and criterion.
5. Explain trade-offs in meaningfulness, feasibility, and generalization.
6. Flag vague, compound, or difficult-to-measure wording.
7. List decisions for the educator and team.

Do not assume a universal accuracy threshold. Do not present a suggested
criterion as a legal standard. Do not infer need from diagnosis, eligibility,
test scores, or grades. Stop after alternatives and review questions.
", Header 2 ("4-task-analysis-and-instructional-sequence", ["unnumbered", "unlisted"], []) [Str "4. Task analysis and instructional sequence"], CodeBlock ("", ["text"], []) "Conduct a Q&A intake, one question at a time:
- What activity and meaningful purpose are being addressed?
- Where, when, and with what materials or tools does it occur?
- Which steps are already known to be successful?
- What counts as completion for the whole task?
- What prompts or supports are currently used, if known?
- What needs direct observation before the sequence can be finalized?

Show a Q&A confirmation and wait for approval.

Activity and purpose: [describe]
Verified task conditions and tools: [describe]
Known successful steps: [list]
Unknowns to observe: [list]
Audience: [intended audience]

Return:
1. Numbered, observable steps.
2. Definition of completion for each step.
3. Possible prompt levels, defined in plain language.
4. Environmental or task variables to record.
5. Steps that may need individualization.
6. A brief learner feedback check.

Do not assume a particular tool is needed. Do not present a proposed sequence
as a claim about current ability. Label suggestions requiring observation.
Stop after the draft sequence.
", Header 2 ("5-data-collection-tool-design", ["unnumbered", "unlisted"], []) [Str "5. Data-collection tool design"], CodeBlock ("", ["text"], []) "Ask one Q&A question at a time:
- What specific skill or outcome will be observed?
- What is the operational definition, including examples and non-examples?
- What counts as one valid opportunity?
- Which conditions, prompts, supports, or context variables matter?
- Who will collect data, when, and in what setting?
- What recording method is practical and how will missing data be marked?

Provide a Q&A confirmation, highlight unresolved measurement decisions,
and wait for approval.

Target: [skill or outcome]
Setting and routine: [context]
Known measurement constraints: [time, staff, materials]

Design a simple data-collection tool. Include:
1. Field names and plain-language definitions.
2. A usable recording layout with date/session and opportunity fields.
3. Operational definitions and prompt/support codes where relevant.
4. Rules for invalid, missed, or not-applicable opportunities.
5. A brief example row using synthetic data.
6. Directions for summarizing results without confusing counts,
   percentages, rates, and opportunities.
7. A short reliability check for two observers, if appropriate.

Do not invent baseline values or imply the tool has been validated.
Do not collect unnecessary personal information. Stop after the tool and
its instructions.
", Header 2 ("6-data-analysis-and-progress-review", ["unnumbered", "unlisted"], []) [Str "6. Data analysis and progress review"], CodeBlock ("", ["text"], []) "Before analysis, ask one question at a time:
- What does each row and column represent?
- What are the numerator, denominator, and unit of measurement?
- How are prompts, independent responses, and missing values coded?
- Were procedures, settings, observers, or materials changed?
- What decision, if any, will this review inform?

Show the answers as a Q&A confirmation. Flag ambiguous data definitions
and wait for approval before calculating.

Review this synthetic or approved de-identified dataset.
Target and operational definition: [insert]
Measurement and denominator: [insert]
Prompt/independence definitions: [insert]
Conditions and changes: [insert]
Data: [paste rows without identifiers]

Please:
1. Restate the data structure and identify missing, duplicate, or invalid values.
2. Recalculate key values and show arithmetic.
3. Describe level, trend, variability, and notable changes.
4. Separate data descriptions from possible explanations.
5. Offer at least three competing explanations.
6. State what additional evidence could distinguish them.
7. Describe the strength and limits of any conclusion.
8. Suggest one small testable next step and what data to review.

Do not claim causation from a small dataset. Do not treat missing values as
zero. Do not combine independent and prompted performance. Do not declare
mastery or plateau from a spreadsheet flag alone. Stop after analysis.
", Header 2 ("7-instructional-refinement-after-testing", ["unnumbered", "unlisted"], []) [Str "7. Instructional refinement after testing"], CodeBlock ("", ["text"], []) "Conduct Q&A before recommending revisions:
- What was the intended outcome and what was actually tested?
- What observations or data were collected?
- What did the learner and staff report?
- What conditions, materials, or procedures changed?
- What must remain unchanged, and what can be adjusted?

Ask one question at a time. Present a Q&A confirmation and wait for approval.

Artifact and context: [plan, tool, lesson, or material]
Observed results: [observations, learner feedback, staff feedback, data]
Original intended outcome: [target and conditions]

Please:
1. Compare intended outcome with observed evidence.
2. Separate observations from interpretations.
3. Identify what worked and what created friction or barriers.
4. Offer two or three small revisions with trade-offs.
5. State what should remain unchanged.
6. Suggest how to test one revision and what data to collect.
7. List questions for the learner and team.

Do not assume the learner caused a failure. Consider task design,
environment, materials, instruction, time, and measurement quality.
Do not infer a diagnosis or make a team decision. Stop after options.
", Header 2 ("8-lesson-material-or-activity-adaptation", ["unnumbered", "unlisted"], []) [Str "8. Lesson, material, or activity adaptation"], CodeBlock ("", ["text"], []) "Ask one question at a time:
- What learning objective or standard must remain central?
- Who is the intended audience and what prior knowledge is assumed?
- What part of the current lesson or material is not working?
- What learner strengths, preferences, and documented needs are relevant?
- What format, time, technology, and resource constraints apply?
- How will we know whether the adaptation helped?

Summarize in Q&A format and wait for approval.

Current lesson/material: [paste or describe]
Learning objective: [objective]
Learner and setting context: [de-identified and relevant information]
Constraints: [time, materials, technology, format]

Create an adapted version that:
1. Preserves the stated learning objective.
2. Uses clear, age-respectful language and an appropriate level of challenge.
3. Provides more than one way to engage with or respond to the task where
   appropriate.
4. Identifies needed materials, preparation, and instructional steps.
5. Includes a brief check for understanding.
6. Explains what was changed and why.
7. Lists adaptations that require educator or team review.

Do not lower the learning objective without an explicit rationale and
professional approval. Do not assume an accommodation is appropriate
without evidence. Stop after the adapted draft and change log.
", Header 2 ("9-accommodation-and-access-planning-review", ["unnumbered", "unlisted"], []) [Str "9. Accommodation and access-planning review"], CodeBlock ("", ["text"], []) "Begin with a Q&A interview, one question at a time:
- What task or activity must the learner access or complete?
- What barrier has been directly observed, and in what conditions?
- What does the learner report about the task?
- What supports, strategies, or tools have actually been tried?
- What was the observed result of each trial?
- Which qualified staff or team members need to be consulted?

Show answers, unknowns, and assumptions in a Q&A confirmation. Wait for approval.

Task and setting: [describe]
Observed barrier: [describe without interpretation]
Strategies tried and evidence: [list]
Relevant constraints: [list]

Return:
1. The task demand and observed barrier, kept distinct.
2. Known facts, unknowns, and hypotheses.
3. Possible supports or adjustments to investigate, with rationale.
4. How to trial each option and what evidence to collect.
5. Learner input and team questions still needed.
6. Potential unintended effects or trade-offs.
7. A concise review plan.

Do not prescribe accommodations, determine eligibility, or change services.
Do not infer needs from a label or diagnosis. Do not treat a possible support
as an approved accommodation. Stop after options and evidence plan.
", Header 2 ("10-behavior-or-participation-pattern-review", ["unnumbered", "unlisted"], []) [Str "10. Behavior or participation pattern review"], CodeBlock ("", ["text"], []) "Ask one question at a time:
- What observable action or participation pattern is being discussed?
- What happens immediately before and after it?
- When and where does it occur, and when does it not occur?
- How often, how long, or under what measurement is it recorded?
- What contextual, communication, health, environmental, or task variables
  are already documented by qualified staff?
- What immediate safety or support procedures already exist?

Present a Q&A confirmation and separate facts from hypotheses. Wait for approval.

De-identified observation notes: [insert]
Operational definition, if available: [insert]
Setting and context: [insert]

Organize the information as:
1. Observable description, avoiding labels and inferred intent.
2. Antecedent, behavior/action, and consequence/context sequence where useful.
3. Patterns across settings, times, tasks, and conditions.
4. Missing information and competing hypotheses.
5. Questions for the learner, family, and qualified team members.
6. Non-prescriptive environmental or instructional variables to review.
7. Data that could clarify the pattern.

Do not diagnose, assign motive or function as fact, recommend restrictive
procedures, or replace a qualified functional assessment or safety plan.
Do not treat correlation as causation. Stop after organizing evidence.
", Header 2 ("11-rubric-checklist-or-performance-criteria-design", ["unnumbered", "unlisted"], []) [Str "11. Rubric, checklist, or performance-criteria design"], CodeBlock ("", ["text"], []) "Conduct a Q&A intake:
- What skill, product, or process will be evaluated?
- What objective or standard should the criteria align with?
- Who will use the rubric and who is being assessed?
- What are the essential dimensions of quality?
- How many performance levels are useful?
- What evidence would distinguish one level from another?
- How will accessibility, bias, and consistent scoring be checked?

Ask one question at a time. Confirm answers in Q&A format and wait for approval.

Task/product: [describe]
Objective: [insert]
Audience and use: [insert]

Create a rubric or checklist with:
1. A small number of distinct, observable criteria.
2. Plain-language performance descriptors for each level.
3. Clear distinction between levels; avoid vague terms such as \"good.\"
4. Scoring guidance and rules for not observed/not applicable.
5. An example using fictional work, if useful.
6. A brief consistency and bias review.

Do not equate a score with a diagnosis, eligibility decision, or overall
learner ability. Identify criteria requiring professional agreement.
Stop after the draft instrument.
", Header 2 ("12-family-or-caregiver-communication-draft", ["unnumbered", "unlisted"], []) [Str "12. Family or caregiver communication draft"], CodeBlock ("", ["text"], []) "Before drafting, ask one question at a time:
- What is the purpose of the communication?
- Who is the audience and what relationship or context matters?
- What verified information should be communicated?
- What action or response, if any, is requested?
- What tone, language, translation, and accessibility needs apply?
- What information must be omitted or confirmed by the sender?

Show a Q&A confirmation, distinguish verified facts from pending details,
and wait for approval.

Purpose: [inform, invite, explain, follow up, or request input]
Verified facts: [insert]
Requested action and deadline: [insert or \"none\"]
Tone and format: [insert]

Draft a clear, respectful, family-centered message that:
1. States the purpose early.
2. Uses plain language and explains necessary professional terms.
3. Separates facts from proposed next steps.
4. Invites questions or the family's perspective where appropriate.
5. Avoids blame, jargon, unsupported conclusions, and promises the sender
   cannot make.
6. Includes only approved contact and logistical details.

Do not invent dates, decisions, services, or commitments. Do not send the
message. Mark any detail the sender must verify. Stop after the draft.
", Header 2 ("13-meeting-preparation-and-decision-log", ["unnumbered", "unlisted"], []) [Str "13. Meeting preparation and decision log"], CodeBlock ("", ["text"], []) "Ask one question at a time:
- What is the meeting purpose and what decisions are within its scope?
- Who is expected to participate, by role?
- What evidence and documents are available and verified?
- What questions or disagreements need respectful clarification?
- What decisions must be made by the team or another authorized person?
- What follow-up actions, owners, and due dates should be recorded?

Present a Q&A confirmation and wait for approval.

Meeting type and purpose: [insert]
Participants by role: [insert]
Verified evidence: [insert]
Known questions: [insert]

Prepare:
1. A concise agenda with time estimates.
2. Questions organized by topic and responsible role.
3. Evidence to bring and items still missing.
4. Options and trade-offs for discussion, not predetermined decisions.
5. A neutral decision-log template with decision, rationale/evidence,
   responsible person, and follow-up date.
6. A follow-up action list.

Do not fabricate consensus, meeting outcomes, attendance, or commitments.
Do not make eligibility, placement, service, or IEP decisions. Stop before
the meeting and leave outcome fields blank until confirmed.
", Header 2 ("14-morning-email-action-report", ["unnumbered", "unlisted"], []) [Str "14. Morning email action report"], Para [Str "Use only in a district-approved Microsoft 365 Copilot environment and only as permitted by policy. For practice, use the simulated inbox in the email lab."], CodeBlock ("", ["text"], []) "First ask in Q&A format:
- Which mailbox, folder, sender, or date range should be reviewed?
- What time period counts as \"today\" for this report?
- Are there priority deadlines or categories to flag?
- Should the report include only actionable messages or also FYI items?

Ask one question at a time, confirm scope, then review only the specified messages.
Do not send, delete, archive, forward, or mark messages complete.

For each possible action item, return:
- Task or requested action
- Sender and subject (source)
- Due date exactly as stated, or \"not stated / unclear\"
- Suggested urgency from 1 to 5
- Reason based on deadline, impact, and time sensitivity
- Recommended next step
- What I must verify in the original message

Urgency guide:
5 = immediate safety, service, or hard-deadline risk
4 = time-sensitive deadline or significant impact within 1 business day
3 = important work due soon, generally within several days
2 = routine follow-up without a near deadline
1 = informational or low-action item

Do not infer a due date. Do not rank solely by sender title.
If urgency is uncertain, explain why. Separate tasks from FYI items.
Identify possible duplicate requests. Return a concise numbered list.
Stop after the report and wait for my review.
", Header 2 ("15-source-and-claim-verification", ["unnumbered", "unlisted"], []) [Str "15. Source and claim verification"], CodeBlock ("", ["text"], []) "Start with Q&A:
- Which claims or statements need verification?
- What jurisdiction, organization, or date range applies?
- Are there required authoritative sources?
- Is the supplied source material complete and current?
- How should uncertainty or conflicting sources be reported?

Ask one question at a time and confirm scope in Q&A format.

Claims to check: [list]
Context/jurisdiction: [insert]
Sources supplied or required: [insert]

For each claim:
1. Restate it precisely.
2. Identify what evidence would support or contradict it.
3. Check the original authoritative source when available.
4. Provide source title, issuing organization, publication/update date,
   and a working citation or link where possible.
5. Distinguish confirmed, partially supported, outdated, disputed,
   and unverified claims.
6. Quote only what is necessary and explain limitations.
7. List claims that need human or legal review.

Do not fabricate citations, titles, quotations, or dates. If browsing or
source access is unavailable, say so. Do not present a model's recollection
as current verification. Stop after the verification report.
", Header 2 ("16-spreadsheet-and-calculation-quality-check", ["unnumbered", "unlisted"], []) [Str "16. Spreadsheet and calculation quality check"], CodeBlock ("", ["text"], []) "Conduct a Q&A intake:
- What is the purpose of the spreadsheet and what does each row represent?
- What are the units, numerator, denominator, and expected ranges?
- Which cells contain raw data, formulas, or manually entered values?
- How are blanks, errors, duplicates, and not-applicable values handled?
- What formulas or summaries are most important to audit?
- What output or decision will use these results?

Show Q&A confirmation and wait for approval before analysis.

Spreadsheet structure or sample: [paste de-identified rows/formulas]
Expected calculations: [describe]
Known issues: [describe]

Audit:
1. Formula logic and cell references.
2. Numerators, denominators, units, and percentage/rate calculations.
3. Blank, duplicate, invalid, and out-of-range values.
4. Whether formulas treat missing data appropriately.
5. Whether charts and labels represent the data accurately.
6. A small hand-calculated verification example.
7. Specific corrections, with cell references where available.

Do not alter the source file or assume a formula is correct because it
returns a plausible value. Do not treat missing values as zero unless the
measurement rules explicitly require it. Stop after the audit and proposed
corrections.
", Header 2 ("17-implementation-or-project-plan", ["unnumbered", "unlisted"], []) [Str "17. Implementation or project plan"], CodeBlock ("", ["text"], []) "Ask one question at a time:
- What specific outcome should this project achieve?
- What is in scope and explicitly out of scope?
- What resources, roles, and approvals are available?
- What dependencies, risks, and deadlines are known?
- What milestones and evidence will show progress?
- Who can approve changes or decide to stop?

Summarize answers in Q&A format and wait for approval.

Project/outcome: [insert]
Timeframe: [insert]
Known resources and constraints: [insert]

Create a bounded implementation plan with:
1. Outcome and scope.
2. Phases or steps in sequence.
3. Responsible roles (not invented names).
4. Dependencies and required approvals.
5. Risks, mitigations, and unresolved assumptions.
6. Milestones and observable completion criteria.
7. Review points and stop/change conditions.

Do not invent commitments, staff availability, budgets, or approvals.
Keep decisions with authorized people. Stop after the plan.
", Header 2 ("18-reflection-and-professional-learning", ["unnumbered", "unlisted"], []) [Str "18. Reflection and professional learning"], CodeBlock ("", ["text"], []) "Begin with a reflective Q&A, one question at a time:
- What did you intend to accomplish?
- What did you actually do, and what evidence is available?
- What worked, what did not, and for whom?
- What feedback did the learner, family, or colleagues provide?
- What surprised you or challenged an assumption?
- What is one small next step within your role?

Show a Q&A summary and wait for approval.

Experience or artifact: [describe]
Evidence and feedback: [insert]
Reflection purpose: [insert]

Return:
1. Intended outcome compared with observed outcome.
2. Evidence, interpretation, and unknowns in separate sections.
3. Assumptions that were confirmed or challenged.
4. One or two lessons for future practice.
5. A specific next step and evidence to collect.
6. A question for continued professional learning.

Do not turn limited evidence into a broad judgment about a learner or
professional. Do not invent feedback. Stop after the reflection.
", Header 2 ("19-refinement-prompt", ["unnumbered", "unlisted"], []) [Str "19. Refinement prompt"], Para [Str "After reviewing any model response, ask:"], CodeBlock ("", ["text"], []) "Do not rewrite the response yet. First identify:
1. Unsupported claims and missing citations.
2. Assumptions requiring confirmation.
3. Missing information that could change the result.
4. Internal contradictions, calculation errors, or ambiguous wording.
5. Accessibility, privacy, bias, or implementation risks.
6. Two alternative approaches and their trade-offs.

Present your findings in Q&A format:
- Question or issue
- What the current response says
- Evidence or clarification needed
- Possible revision

Ask me which changes to make. Ask one question at a time.
Do not move to another task or rewrite until I approve.
", Header 2 ("20-optional-prompt-design-interview", ["unnumbered", "unlisted"], []) [Str "20. Optional prompt-design interview"], Para [Str "This is a companion to the bounded prompt template, not a replacement for it. Use it when the task is known but the professional wants help specifying the prompt before asking for a report, analysis, or other deliverable."], Para [Strong [Str "Interview prompt"]], CodeBlock ("", ["text"], []) "I want to create a prompt for this purpose: [briefly name the desired report,
analysis, plan, or response].

Do not perform the task yet. Act as a prompt-design interviewer. Ask one
focused question at a time and wait for my answer. Ask about:
- My role, scope, and intended use of the output.
- The exact task and question to be answered.
- Audience, setting, and relevant context.
- Available source material, known facts, and unknowns.
- Learner strengths, preferences, and task-specific considerations.
- Required sections, format, length, tone, and accessibility.
- Evidence standards and verification requirements.
- Prohibited actions and decisions reserved to qualified professionals.
- Stop condition and what to do when information is missing.

Do not request identifiable information. Do not infer answers or fill gaps.
Record unknowns explicitly. When enough information is available, present
a Q&A confirmation with each question paired to my answer, plus unknowns.
Ask me to correct or approve it. Do not draft the final task prompt until
I approve the summary.
", Para [Strong [Str "Prompt-assembly follow-up"]], CodeBlock ("", ["text"], []) "Using only the answers I approved, draft the complete prompt for
[desired report/analysis/response]. Organize it into role, task, context
and sources, constraints, required output, verification requirements,
and stop condition. Preserve unknowns; do not fill them. Include a short
quality checklist. Do not perform the task. Show me the prompt for approval.
", Para [Str "The professional reviews and edits the assembled prompt before running it. The interview does not replace evidence collection, the existing prompts in this library, or professional judgment."], Header 2 ("21-universal-review-checklist", ["unnumbered", "unlisted"], []) [Str "21. Universal review checklist"], Para [Str "Use this Q&A-style review before retaining or sharing any output. Answer each question with ", Strong [Str "Yes"], Str ", ", Strong [Str "No"], Str ", or ", Strong [Str "Needs verification"], Str ", and add evidence or a corrective action."], BulletList [[Plain [Str "Is this one bounded task with a clear stop condition?"]], [Plain [Str "Was the intended audience and professional role specified?"]], [Plain [Str "Is the input fictional or approved for this system?"]], [Plain [Str "Are facts, hypotheses, assumptions, and unknowns separated?"]], [Plain [Str "Did the model avoid inventing facts, sources, deadlines, or commitments?"]], [Plain [Str "Is the output aligned with the intended purpose and evidence?"]], [Plain [Str "Are language, format, and accessibility appropriate?"]], [Plain [Str "Are calculations, links, dates, and factual claims independently checked?"]], [Plain [Str "Are privacy, bias, and implementation risks addressed?"]], [Plain [Str "Is a human decision-maker clearly identified?"]], [Plain [Str "Did the model stop where requested?"]], [Plain [Str "What must be corrected or verified before the output is used?"]]], Para [Str "Record the reviewer, date, artifact version, unresolved issues, and approval status when the document is used in a formal workflow."]]