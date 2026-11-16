# Reusable Prompt Library

Use these prompts with fictional or district-approved information only. Replace bracketed text before use. Each prompt is limited to a defined task and requires professional review before any decision or implementation. Do not paste identifiable student or staff information into an unapproved system.

## Choose a prompt

1. **Bounded prompt template:** establish role, task, context, constraints, output, and stop condition.
2. **Student and task analysis:** separate known facts, unknowns, hypotheses, and questions.
3. **Goal development and measurement:** brainstorm measurable options for professional review.
4. **Task analysis:** draft observable steps and identify what requires observation.
5. **Data analysis:** verify calculations and describe patterns without overclaiming.
6. **Instructional refinement:** compare an artifact with test evidence and propose small revisions.
7. **Email action report:** summarize possible actions without changing mailbox content.
8. **Refinement prompt:** challenge an existing response before rewriting it.
9. **Prompt-design interview:** have the LLM ask the professional focused questions and use approved answers to assemble a task-specific prompt.
10. **Universal review checklist:** verify quality before retaining or sharing an output.

Use one prompt at a time. Do not ask the model to complete the entire Plan → Refine → Build → Refine cycle in a single response.

## 1. Bounded prompt template

```text
ROLE
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
```

## 2. Student and task analysis

```text
Analyze this fictional or approved de-identified profile for one
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
```

## 3. Educational goal development and measurement

```text
Help me brainstorm possible measurable instructional targets for
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
```

## 4. Task analysis and instructional sequence

```text
Draft a task analysis for this instructional, communication, behavioral, access, or related-service activity.

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
```

## 5. Data analysis and progress review

```text
Review this synthetic or approved de-identified dataset.

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
```

## 6. Instructional refinement after testing

```text
We tested this instructional plan or tool:
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
```

## 7. Morning email action report

Use only in a district-approved Microsoft 365 Copilot environment and only as permitted by policy. For practice, use the simulated inbox in the email lab.

```text
Review the messages I specify for today's action planning.
Do not send, delete, archive, forward, or mark messages complete.

For each possible action item, return:
- Task or requested action
- Sender and subject (source)
- Due date exactly as stated, or "not stated / unclear"
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
```

## 8. Refinement prompt

After reviewing any model response, ask:

```text
Do not rewrite the response yet. First identify:
1. Unsupported claims.
2. Assumptions requiring confirmation.
3. Missing information that could change the result.
4. Accessibility or implementation risks.
5. Two alternative approaches and their trade-offs.

Ask me which changes to make. Do not move to another task.
```

## 9. Optional prompt-design interview

This is a companion to the bounded prompt template, not a replacement for it. Use it when the task is known but the professional wants help specifying the prompt before asking for the report, analysis, or other deliverable.

**Interview prompt**

```text
I want to create a prompt for this purpose: [briefly name the desired report,
analysis, plan, or response].

Do not perform the task yet. Act as a prompt-design interviewer. Ask one
focused question at a time and wait for my answer. Ask about:
- My role, scope, and intended use of the output.
- The exact task and question to be answered.
- Audience, setting, and relevant context.
- Available source material, known facts, and unknowns.
- Learner strengths, access needs, and competing considerations.
- Required sections, format, length, tone, and accessibility.
- Evidence standards and verification requirements.
- Prohibited actions and decisions reserved to qualified professionals.
- Stop condition and what to do when information is missing.

Do not request identifiable student information. Do not infer answers or
fill gaps. Record unknowns explicitly. When enough information is available,
summarize my answers and ask me to correct or approve the summary.
Do not draft the final task prompt until I approve the summary.
```

**Prompt-assembly follow-up**

```text
Using only the answers I approved, draft the complete prompt for
[desired report/analysis/response]. Organize it into role, task, context
and sources, constraints, required output, verification requirements,
and stop condition. Preserve unknowns; do not fill them. Include a short
quality checklist. Do not perform the task. Show me the prompt for approval.
```

The professional reviews and edits the assembled prompt before running it. The interview does not replace the six-part bounded prompt structure, the existing prompts in this library, evidence collection, or professional judgment.

## 10. Universal review checklist

- Is this one bounded task?
- Is the input fictional or approved?
- Are facts separated from assumptions?
- Does the response identify unknowns?
- Is the output accessible and useful?
- Are calculations and factual claims independently checked?
- Is a human decision-maker clearly identified?
- Did the model stop where requested?
