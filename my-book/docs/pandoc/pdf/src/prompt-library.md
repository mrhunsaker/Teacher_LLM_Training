[Header 1 ("reusable-prompt-library", [], []) [Str "Reusable Prompt Library"], Para [Str "Use these prompts with fictional or district-approved information only. Replace bracketed text before use. Each prompt is limited to a defined task and requires professional review before any decision or implementation. Do not paste identifiable student or staff information into an unapproved system."], Header 2 ("choose-a-prompt", ["unnumbered", "unlisted"], []) [Str "Choose a prompt"], OrderedList (1, DefaultStyle, DefaultDelim) [[Plain [Strong [Str "Bounded prompt template:"], Str " establish role, task, context, constraints, output, and stop condition."]], [Plain [Strong [Str "Student and task analysis:"], Str " separate known facts, unknowns, hypotheses, and questions."]], [Plain [Strong [Str "Goal development and measurement:"], Str " brainstorm measurable options for professional review."]], [Plain [Strong [Str "Task analysis:"], Str " draft observable steps and identify what requires observation."]], [Plain [Strong [Str "Data analysis:"], Str " verify calculations and describe patterns without overclaiming."]], [Plain [Strong [Str "Instructional refinement:"], Str " compare an artifact with test evidence and propose small revisions."]], [Plain [Strong [Str "Email action report:"], Str " summarize possible actions without changing mailbox content."]], [Plain [Strong [Str "Refinement prompt:"], Str " challenge an existing response before rewriting it."]], [Plain [Strong [Str "Universal review checklist:"], Str " verify quality before retaining or sharing an output."]]], Para [Str "Use one prompt at a time. Do not ask the model to complete the entire Plan → Refine → Build → Refine cycle in a single response."], Header 2 ("1-bounded-prompt-template", ["unnumbered", "unlisted"], []) [Str "1. Bounded prompt template"], CodeBlock ("", ["text"], []) "ROLE
Act as a planning and drafting assistant for a special education professional.
My role and scope of practice are: [state role]. Do not act as an evaluator,
diagnostician, IEP decision-maker, or legal authority.

TASK
Complete one task: [specific task and purpose].

CONTEXT
Use only these relevant facts: [brief de-identified information].
Audience: [special education teacher, professional or service provider, DHH teacher, school psychologist, SLP, related-service provider, classroom teacher, student, family, or team].
Task and setting: [relevant conditions].

BOUNDARIES
- Do not invent student facts or infer skills from diagnosis, eligibility label,
  test score, acuity, grades, or device ownership.
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
", Header 2 ("2-student-and-task-analysis", ["unnumbered", "unlisted"], []) [Str "2. Student and task analysis"], CodeBlock ("", ["text"], []) "Analyze this fictional or approved de-identified profile for one
educational or related-service task.

Profile: [relevant facts]
Task and purpose: [meaningful activity and setting]

Return:
1. Facts explicitly stated.
2. Unknowns that cannot be inferred.
3. Hypotheses worth investigating, clearly labeled.
4. Questions for the student, family, relevant service providers, classroom teacher,
   or related-service staff.
5. Possible access barriers and environmental variables to observe.
6. Possible educational or related-service connections and a reason for each.
7. Evidence needed before selecting an instructional target.

Do not infer functional vision, communication, behavior, cognition, motivation, independence,
or academic skill from diagnosis, eligibility label, test score, acuity, grades, or device ownership.
Do not recommend reducing or replacing services.
Do not write an IEP goal yet. Stop after the analysis.
", Header 2 ("3-educational-goal-development-and-measurement", ["unnumbered", "unlisted"], []) [Str "3. Educational goal development and measurement"], CodeBlock ("", ["text"], []) "Help me brainstorm possible measurable instructional targets for
this fictional or approved de-identified educational or related-service task. Do not choose
the final target for the team.

Context: [task, setting, relevant facts]
Baseline: [sessions, opportunities, independent and prompted performance,
conditions, and notes]

Please:
1. Identify whether baseline information is sufficient to draft options.
2. List missing information.
3. Draft up to three alternative target statements.
4. For each, identify behavior, conditions, opportunities, prompt/
   independence definition, measurement method, and criterion.
5. Explain trade-offs in meaningfulness, feasibility, and generalization.
6. Flag vague or difficult-to-measure wording.
7. List decisions for the educator and IEP team.

Do not assume a universal accuracy threshold. Greater than 90% across
three sessions is not a legal standard. Do not infer need from diagnosis, eligibility label, test scores,
or grades. Stop after alternatives and review questions.
", Header 2 ("4-task-analysis-and-instructional-sequence", ["unnumbered", "unlisted"], []) [Str "4. Task analysis and instructional sequence"], CodeBlock ("", ["text"], []) "Draft a task analysis for this instructional, communication, behavioral, access, or related-service activity.

Activity and purpose: [describe]
Verified access conditions and tools: [describe]
Known successful steps: [list]
Unknowns to observe: [list]
Audience: [special education teacher, TVI, DHH teacher, school psychologist, SLP, related-service provider, classroom teacher, student, family, or team]

Return:
1. Numbered observable steps.
2. Definition of completion for each step.
3. Possible prompt levels, defined in plain language.
4. Environmental or access variables to record.
5. Steps that may need individualization.
6. A brief student feedback check.

Do not assume a particular tool is needed. Do not present a proposed
sequence as a claim about current ability. Label suggestions requiring
observation. Use concise text only. Stop after the draft sequence.
", Header 2 ("5-data-analysis-and-progress-review", ["unnumbered", "unlisted"], []) [Str "5. Data analysis and progress review"], CodeBlock ("", ["text"], []) "Review this synthetic or approved de-identified dataset.

Target and operational definition: [insert]
Measurement and denominator: [insert]
Prompt/independence definitions: [insert]
Conditions and changes: [insert]
Data: [paste rows without identifiers]

Please:
1. Restate the data structure and identify missing or invalid values.
2. Recalculate key values and show arithmetic.
3. Describe level, trend, variability, and notable changes.
4. Separate data descriptions from possible explanations.
5. Offer at least three competing explanations.
6. State what additional evidence could distinguish them.
7. Describe the strength and limits of any conclusion.
8. Suggest one small testable next step and what to review.

Do not claim causation from a small dataset. Do not treat missing values
as zero. Do not combine independent and prompted performance.
Do not declare mastery or plateau from a spreadsheet flag alone.
Stop after analysis; do not change the instructional plan.
", Header 2 ("6-instructional-refinement-after-testing", ["unnumbered", "unlisted"], []) [Str "6. Instructional refinement after testing"], CodeBlock ("", ["text"], []) "We tested this instructional plan or tool:
[artifact and context]

What happened:
[observations, student feedback, staff feedback, data]

Original intended outcome:
[target and conditions]

Please:
1. Compare intended outcome with observed evidence.
2. Separate observations from interpretations.
3. Identify what worked and what created friction or access barriers.
4. Offer two or three small revisions with trade-offs.
5. State what should remain unchanged.
6. Suggest how to test one revision and what data to collect.
7. List questions for the student and team.

Do not assume the learner caused a failure. Consider task design,
environment, materials, instruction, time, and measurement quality.
Do not infer a diagnosis or make an IEP decision.
Do not rewrite the whole plan unless I ask. Stop after options.
", Header 2 ("7-morning-email-action-report", ["unnumbered", "unlisted"], []) [Str "7. Morning email action report"], Para [Str "Use only in a district-approved Microsoft 365 Copilot environment and only as permitted by policy. For practice, use the simulated inbox in the email lab."], CodeBlock ("", ["text"], []) "Review the messages I specify for today's action planning.
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
", Header 2 ("8-refinement-prompt", ["unnumbered", "unlisted"], []) [Str "8. Refinement prompt"], Para [Str "After reviewing any model response, ask:"], CodeBlock ("", ["text"], []) "Do not rewrite the response yet. First identify:
1. Unsupported claims.
2. Assumptions requiring confirmation.
3. Missing information that could change the result.
4. Accessibility or implementation risks.
5. Two alternative approaches and their trade-offs.

Ask me which changes to make. Do not move to another task.
", Header 2 ("9-universal-review-checklist", ["unnumbered", "unlisted"], []) [Str "9. Universal review checklist"], BulletList [[Plain [Str "Is this one bounded task?"]], [Plain [Str "Is the input fictional or approved?"]], [Plain [Str "Are facts separated from assumptions?"]], [Plain [Str "Does the response identify unknowns?"]], [Plain [Str "Is the output accessible and useful?"]], [Plain [Str "Are calculations and factual claims independently checked?"]], [Plain [Str "Is a human decision-maker clearly identified?"]], [Plain [Str "Did the model stop where requested?"]]]]