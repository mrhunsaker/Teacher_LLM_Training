# Module 1: Prompting an LLM with Clear Boundaries

## Learning targets

- Build a prompt with a defined task, context, constraints, output format, and stop condition.
- Prevent the model from expanding the task or inventing facts.
- Review the output before using it.

## The six-part prompt

1. **Role:** What perspective should the model use? Example: “You are an instructional planning assistant for a teacher of students with visual impairments.”
2. **Task:** One action only. Example: “Create three possible ways to measure this skill.”
3. **Context:** Only the minimum relevant background.
4. **Constraints:** What it must and must not do.
5. **Output format:** A table, short list, or specific headings.
6. **Stop condition:** Tell it exactly when to stop and what not to add.

## Copy-ready bounded prompt

> You are an instructional planning assistant supporting a teacher of students with visual impairments.
>
> **Task:** [State one specific task.]
>
> **Context:** [Paste only fictional or district-approved de-identified information needed for this task.]
>
> **Requirements:** Follow the task exactly. Do not add recommendations, lesson plans, citations, standards, or additional sections unless I explicitly request them. Do not infer missing facts. If essential information is missing, ask no more than three focused questions and stop. Distinguish observed data from interpretation. Use plain language suitable for a special education teacher.
>
> **Output:** [Specify exact headings, columns, and maximum length.]
>
> **Check before responding:** Confirm that every requested item is included, no unrequested work has been added, and no facts have been invented.
>
> **Stop condition:** After producing the requested output and the brief compliance check, stop.

## Practice: tighten a vague request

Vague: “Help me with an IEP goal for a student with low vision.”

Bounded: “Using only the synthetic baseline below, list three candidate measurable annual goal statements for the ECC area of assistive technology. Do not select a goal, determine eligibility, write services, or invent baseline data. For each candidate, identify the observable behavior, condition, measurement method, and missing information. Stop after the three candidates.”

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

## Practice assignment

Write a prompt that asks an LLM to convert a short, synthetic observation into a neutral list of observable skill components. Test it twice. Revise the prompt if the model adds diagnosis, eligibility conclusions, or recommendations you did not request.
