# Handout 1 — Bounded prompt planner

**Purpose:** Define one task, its boundaries, the output, and the point where the model must stop.

### Plan the request

**Task and purpose**

_Write one specific task. Avoid broad requests such as “make a complete plan.”_

> __________________________________________________________________
>
> __________________________________________________________________

**Intended audience**

_Name who will use the output:_

> __________________________________________________________________

**Relevant context that may be shared**

_Include only the minimum facts needed for this task. Identify the approved source or fictional case._

> __________________________________________________________________
>
> __________________________________________________________________

**Constraints and prohibited actions**

_List assumptions, decisions, or adjacent tasks the model must not take on._

> __________________________________________________________________
>
> __________________________________________________________________

**Required output**

_Specify format, length, headings, reading level, and accessibility requirements._

> __________________________________________________________________
>
> __________________________________________________________________

**Stop condition**

_State exactly where the model must stop and ask before continuing._

> __________________________________________________________________

### Draft and test

**Prompt draft**

> __________________________________________________________________
>
> __________________________________________________________________
>
> __________________________________________________________________

**Quality check**

- [ ] One task only.
- [ ] Facts are separated from hypotheses and unknowns.
- [ ] Only fictional or approved information is included.
- [ ] The model is not asked to diagnose, evaluate, or make a team decision.
- [ ] Output requirements include accessible text and a usable structure.
- [ ] Claims requiring verification are identified.
- [ ] A clear stop condition is included.

### Optional companion: LLM-led prompt-design interview

This method complements the bounded prompt planner; it does not replace it. The LLM interviews you one question at a time, and your approved answers are used to assemble the actual task prompt.

**Interview starter**

> I need a prompt to create [name the report, analysis, or response]. Do not perform the task. Ask me one question at a time about my role and scope, exact task, audience, setting, source information, known facts and unknowns, learner strengths and access needs, required output, evidence and verification standards, prohibited decisions, and stop condition. Do not request identifiable student information or fill gaps with assumptions. When finished, summarize my answers and ask me to approve or correct them.

**Prompt-assembly follow-up**

> Using only my approved answers, draft the complete prompt with role, task, context and sources, constraints, required output, verification requirements, and stop condition. Preserve unknowns. Do not perform the task. Show me the prompt for approval.

**Review notes**

_What did I correct, add, or leave unknown?_

> __________________________________________________________________
>
> __________________________________________________________________

**Revision after testing**

_What did you change? Why was the change needed?_

> __________________________________________________________________
>
> __________________________________________________________________

---
