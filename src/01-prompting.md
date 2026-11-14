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

Do not let the model move from brainstorming to goal writing, service recommendations, or instructional programming unless the teacher explicitly requests that next step. A useful collaboration includes teacher edits, rejected suggestions, and a brief record of why the plan changed.

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
