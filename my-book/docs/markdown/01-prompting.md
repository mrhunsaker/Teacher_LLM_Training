# Module 1: Prompting an LLM with Clear Boundaries

## Learning targets

- Build a prompt with a defined task, context, constraints, output format, and stop condition.
- Prevent the model from expanding the task or inventing facts.
- Review the output before using it.
- Use prompting as part of a collaborative design cycle rather than a one-time request for a finished plan.

## The course design cycle: Plan → Refine → Build → Refine

A prompt is one move in a professional workflow, not a substitute for planning. The educator or qualified service provider owns the sequence and approves each transition.

1. **Plan:** State the educational or related-service question, relevant discipline or framework, meaningful task, learner strengths, known facts, and unknowns. Ask the model to organize the problem—not solve every adjacent problem.
2. **Refine:** Ask the model to challenge assumptions, identify missing observations, and compare possible task definitions. Correct errors and approve a narrow direction.
3. **Build:** Request one concrete artifact, such as a task analysis, data sheet, checklist, or draft lesson component.
4. **Refine:** Test the artifact in context, collect evidence and student feedback, then ask the model to help identify needed revisions. Repeat as needed.

Do not let the model move from brainstorming to goal writing, service recommendations, or instructional programming unless the responsible professional explicitly requests that next step within their role and authority. A useful collaboration includes teacher edits, rejected suggestions, and a brief record of why the plan changed.

## The six-part prompt

1. **Role:** What perspective should the model use? Example: “You are a planning assistant supporting a special education professional. My role and scope of practice are [state role].”
2. **Task:** One action only. Example: “Create three possible ways to measure this skill.”
3. **Context:** Only the minimum relevant background.
4. **Constraints:** What it must and must not do.
5. **Output format:** A table, short list, or specific headings.
6. **Stop condition:** Tell it exactly when to stop and what not to add.

## Copy-ready bounded prompt

> You are a planning and drafting assistant supporting a special education professional. My role and scope of practice are: [state role].
>
> **Task:** [State one specific task.]
>
> **Context:** [Paste only fictional or district-approved de-identified information needed for this task.]
>
> **Requirements:** Follow the task exactly. Do not add recommendations, lesson plans, citations, standards, or additional sections unless I explicitly request them. Do not infer missing facts. If essential information is missing, ask no more than three focused questions and stop. Distinguish observed data from interpretation. Use plain language suitable for the intended professional audience and learner-facing purpose.
>
> **Output:** [Specify exact headings, columns, and maximum length.]
>
> **Check before responding:** Confirm that every requested item is included, no unrequested work has been added, and no facts have been invented.
>
> **Stop condition:** After producing the requested output and the brief compliance check, stop.

## Practice: tighten a vague request

Vague: “Make a complete special education plan for this student.”

Bounded: “Using only the fictional case facts and synthetic baseline below, help me clarify one measurable educational or related-service target within my professional role: [state role]. Identify the observable behavior or outcome, relevant conditions, measurement approach, and missing information. Do not diagnose, determine eligibility, select services or placement, or choose the final target for the team. Stop after the options and questions.”

## Optional workflow: co-design the prompt through an LLM-led interview

The six-part prompt above remains the standard starting point. The interview workflow below is an **optional companion method**, not a replacement for the copy-ready bounded prompt or the existing Plan → Refine → Build → Refine process. It is useful when the professional knows the desired outcome but wants help identifying what the prompt needs to specify.

The LLM first interviews the professional, one question at a time. The professional's answers are then used to assemble and refine the actual task prompt. The model must not answer its own questions, fill gaps with assumptions, or move into the requested analysis/report until the professional approves the assembled prompt.

### Step 1 — Ask the LLM to conduct a prompt-design interview

> I want to create a prompt for this purpose: [briefly name the report, analysis, plan, or response I ultimately need].
>
> Do not perform the task yet and do not draft the final report. Act as a prompt-design interviewer. Ask me one focused question at a time, wait for my answer, and use my answer to decide what to ask next. Cover these areas as relevant:
> 1. My professional role, scope, and intended decision/use.
> 2. The exact task and the question the final output must answer.
> 3. Intended audience, setting, and relevant context.
> 4. Source material and facts I can provide, and what is unknown or unavailable.
> 5. Which learner strengths, access needs, constraints, and competing considerations must be represented.
> 6. Required output sections, format, length, tone, and accessibility.
> 7. Evidence standards, verification steps, and how uncertainty should be reported.
> 8. Actions, conclusions, or professional decisions the model must not make.
> 9. The stop condition and what should happen if essential information is missing.
>
> Do not request names or other identifiable student information. Do not infer answers. If I do not know an answer, record it as unknown and ask whether the final prompt should request clarification, state the limitation, or omit that element. When you have enough information, summarize my answers and ask me to correct or approve the summary. Do not generate the final task prompt until I approve.

### Step 2 — Convert the approved answers into the actual prompt

After reviewing the interview summary, ask:

> Using only the answers I approved, draft the complete prompt I can use to request [the report/analysis/response]. Organize it into role, task, context and sources, constraints, required output, verification requirements, and stop condition. Keep unknowns explicitly marked; do not fill them. Include a short checklist I can use to verify that the resulting output meets my requirements. Do not perform the task itself. Show me the draft for approval.

### Step 3 — Test, revise, and then run the approved prompt

1. Check that the assembled prompt reflects the professional's answers and does not add unsupported facts.
2. Edit the prompt to correct omissions, narrow the task, or strengthen boundaries.
3. Approve the prompt before asking the LLM to perform the report or analysis.
4. Review the resulting output against the evidence, scope, accessibility, and verification requirements. Revise the prompt if the test exposes a weakness.

**Example:** A school psychologist might begin with “I need a hypothesis-neutral summary of a student's incomplete multi-step work and peer interactions.” The interview can clarify whether the output is for consultation or a problem-solving meeting, which observation records are available, how peer-directed behavior is operationally defined, which contexts should be compared, what must remain unknown, and which decisions are reserved to the team. Only after the psychologist approves those details does the LLM assemble the final analysis prompt. The interview improves the prompt; it does not replace professional data collection or judgment.

## Follow-up questions without scope creep

Use a separate prompt for each step:

- “Ask me what the current baseline is. Do not draft a goal yet.”
- “Using the baseline I supplied, identify possible measurable behaviors. Do not write objectives.”
- “Now draft two goal options using the measurement conditions I specify. Do not choose between them.”
- “Check this draft for measurability only. Do not rewrite it.”

## Troubleshooting

| Problem | Add this boundary |
|---|---|
| Model invents details | “Use only facts in the input. Mark missing information as ‘not provided.’” |
| Model writes too much | “Maximum 150 words. Output only the requested table.” |
| Model changes the task | “Do not perform adjacent tasks. Stop after the requested deliverable.” |
| Model assumes independence | “Report prompt level separately; do not equate prompted accuracy with independent performance.” |
| Model gives a single answer as definitive | “Offer alternatives and state what the team must verify.” |

## Quality check

- Is there one clear task?
- Is the context minimal and de-identified?
- Are prohibited actions stated?
- Is the output format specific?
- Is there a stop condition?
- Does the response avoid invented facts and unrequested sections?
- Did the teacher review and revise the output before using it?

## Practice assignment

Write a prompt that asks an LLM to convert a short, synthetic observation into a neutral list of observable skill components. Test it twice. Revise the prompt if the model adds diagnosis, eligibility conclusions, or recommendations you did not request. Then use a second prompt to critique the first output and record which suggestions you accepted or rejected.
