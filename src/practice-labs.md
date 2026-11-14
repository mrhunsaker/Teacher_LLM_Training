# Hands-on Practice Labs

All scenarios and data in this chapter are fictional. Do not paste identifiable student or staff information into a general-purpose AI tool. Each lab can be completed with an approved LLM or offline through partner review.

## Lab 1: Bounded prompting

**Time:** 25–35 minutes.

Rewrite each weak prompt to include one task, relevant context, constraints, output format, and stop condition:

1. "Make an ECC plan for my student."
2. "Write an IEP goal for braille."
3. "Look at this data and tell me if the student is making progress."
4. "Tell me what technology this student should use."

Choose one fictional activity. Identify the task, audience, relevant facts, excluded information, constraints, output, and stop condition. Write a complete prompt using the template in the Prompt Library.

Then red-team the response. Identify one unsupported claim, one assumption, one missing question, one accessibility barrier, and one item requiring professional verification.

**Deliverable:** One bounded prompt, one revision, and a short review note.

**Offline option:** Exchange prompts with a partner. The partner deliberately inserts an unsupported assumption into the simulated answer; the author must detect it.

## Lab 2: Goal development and measurement

**Time:** 35–45 minutes.

A fictional learner is practicing a school-based task with six observable steps. Independent completion across five sessions is:

| Session | Independent steps | Valid steps | Independent accuracy |
|---|---:|---:|---:|
| 1 | 3 | 6 | 50% |
| 2 | 4 | 6 | 66.7% |
| 3 | 4 | 6 | 66.7% |
| 4 | 5 | 6 | 83.3% |
| 5 | 5 | 6 | 83.3% |

Tasks:

1. Define an independent step and any prompt levels.
2. Identify conditions that must remain consistent or be documented.
3. List missing information: prompt definitions, task difficulty, setting, materials, and learner perspective.
4. Use the goal-development prompt to brainstorm up to three target options.
5. Review each option for observable behavior, conditions, measurement, and individualized criterion.
6. Explain why a fixed greater-than-90% criterion may or may not fit this task.

**Deliverable:** One draft target, operational definition, measurement plan, and unresolved team questions.

## Lab 3: Data analysis and possible plateau

**Time:** 35–45 minutes.

Use one of these synthetic datasets: [improving progress](datasets/improving-progress.csv), [variable performance](datasets/variable-performance.csv), or [possible plateau](datasets/possible-plateau.csv). The fields include session, opportunities, independent correct responses, prompted correct responses, and notes.

Tasks:

1. Calculate independent accuracy for at least three sessions by hand.
2. Describe the pattern without explaining why it happened.
3. Ask the model to review the dataset using the data-analysis prompt.
4. Check arithmetic and every claim against the raw rows.
5. Identify at least three competing explanations.
6. State what additional evidence would distinguish those explanations.
7. Recommend one small, testable next step and a review date.

**Deliberate error challenge:** Ask whether the data prove mastery. Reject an answer that treats a threshold or small number of sessions as proof without considering generalization, prompt levels, data quality, and individualized criteria.

**Written response headings:** What the data show; what they do not show; what the model suggested; what I verified or corrected; competing explanations; next step and review evidence.

## Lab 4: Simulated Copilot email triage

**Time:** 30–40 minutes.

All messages below are fictional. Use the email-triage prompt from the Prompt Library.

1. **Classroom Teacher — Materials for tomorrow:** "Could you send the accessible copy of the worksheet before 3:00 p.m. today? We need to prepare materials for tomorrow's lesson."
2. **Parent/Guardian — Home practice:** "When you have a chance this week, could you explain the new practice routine?"
3. **Building Administrator — Annual form due:** "Please submit the annual form by Friday at noon."
4. **District Newsletter — Monthly updates:** "Here are this month's announcements and optional training links."
5. **O&M Colleague — Route practice coordination:** "Can we confirm the route practice location before the next scheduled session?" No date is stated.
6. **Meeting Organizer — Team meeting:** "Please respond to the invitation for the meeting scheduled next Tuesday." No response deadline is stated.
7. **Classroom Teacher — Re: Accessible worksheet:** "I found the accessible copy. No need to send it now; thank you."
8. **Service Coordinator — Service log correction:** "Please review the entry and return corrections by 10:00 a.m. tomorrow."
9. **Vendor Updates — Product announcement:** "New features are available. Read more in our newsletter."
10. **Team Member — Quick question:** "Can you call me when you get a moment?" No deadline or topic is provided.

Tasks:

- Extract only actionable items.
- Preserve sender and subject as the source.
- Mark unstated or ambiguous due dates as unknown.
- Assign urgency 1–5 with a rationale.
- Identify the superseded worksheet request.
- Do not rank solely by sender title.
- Verify each action against the source text.

**Facilitator key:** The worksheet request is superseded by message 7. The annual form and service log have explicit deadlines. The parent request has no exact deadline. Route coordination, meeting response, and the call request need clarification. Do not invent dates.

**Deliverable:** Numbered action report with task, source, due date, urgency, reason, next step, and verification note. Do not connect a real mailbox.

## Lab 5: Plan → Refine → Build → Refine

**Time:** 40–50 minutes.

Choose Aureliano Buendia's vision case, one of the multidisciplinary cases in [Multidisciplinary Special Education Case Studies](multidisciplinary-case-studies.md), or another fictional case. Select a task that fits your role and scope of practice. Select one meaningful, observable task or professional workflow within your role—not an entire service area or domain.

### Stage 1: Plan

Record strengths and priorities explicitly known; task and setting; facts, unknowns, and hypotheses separately; whose perspective should be gathered; and what successful performance means.

### Stage 2: Refine

Ask the model to challenge assumptions and list missing observations. Do not ask it to write the goal yet. Decide which questions can be answered by observation, learner input, or team consultation.

### Stage 3: Build

Choose one artifact: task analysis, checklist, data sheet, accessible practice sequence, or staff coordination note. Use the relevant prompt from the Prompt Library.

### Stage 4: Refine

Test the artifact with a partner acting as learner or staff member. Record friction points and feedback. Ask the model for alternatives, then select one change and explain why.

**Deliverable:** Original plan; questions and corrections; artifact built; test evidence; revision and rationale; what the educator retained, rejected, or changed from the model's suggestions.

## Universal quality check

- [ ] The task is meaningful and bounded.
- [ ] Information is fictional or approved.
- [ ] Facts, hypotheses, and unknowns are distinct.
- [ ] Student perspective is included.
- [ ] Access conditions and prompt levels are documented.
- [ ] Output is usable with a screen reader and keyboard.
- [ ] Calculations and claims are verified.
- [ ] Educator/team retains decision authority.
