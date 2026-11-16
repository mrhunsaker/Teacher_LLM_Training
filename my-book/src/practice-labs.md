# Hands-on Practice Labs

These labs provide structured practice for Sessions 1–6 and the continuing case-study workflow. All scenarios and data are fictional. Do not paste identifiable student or staff information into a general-purpose AI tool.

Each lab can be completed with a district-approved LLM or offline through partner review. Use the [Reusable Prompt Library](prompt-library.md) as a starting point. Treat every model response as a draft that requires professional review.

## Lab sequence

| Lab | Focus | Suggested time | Evidence to retain |
|---|---|---:|---|
| 1 | Bounded prompting | 25–35 min | Prompt, revision, review note |
| 2 | Goal development and measurement | 35–45 min | Draft target and measurement plan |
| 3 | Data analysis and possible plateau | 35–45 min | Data description and next-step rationale |
| 4 | Simulated Copilot email triage | 30–40 min | Verified action report |
| 5 | Plan → Refine → Build → Refine | 40–50 min | Tested artifact and revision record |

---

## Lab 1 — Bounded prompting

**Suggested time:** 25–35 minutes

**Purpose:** Turn a broad request into one bounded task with explicit context, constraints, output requirements, and a stop condition.

### Participant steps

1. Rewrite each weak prompt:
   - “Create a plan for my student.”
   - “Write an IEP goal for this task.”
   - “Look at this data and tell me if the student is making progress.”
   - “Tell me what technology this student should use.”
2. Choose one fictional activity.
3. Identify the task, audience, relevant facts, excluded information, constraints, output, and stop condition.
4. Write a complete prompt using the [bounded prompt template](prompt-library.md#1-bounded-prompt-template).
5. Review the response. Identify:
   - One unsupported claim.
   - One assumption.
   - One missing question.
   - One accessibility barrier.
   - One item requiring professional verification.

### Evidence to retain

- [ ] Original bounded prompt.
- [ ] One revision and the reason for it.
- [ ] Short review note identifying an error, uncertainty, or risk.

**Offline option:** Exchange prompts with a partner. The partner deliberately inserts an unsupported assumption into a simulated answer; the author must detect it.

---

## Lab 2 — Goal development and measurement

**Suggested time:** 35–45 minutes

**Purpose:** Make a target observable and the measurement interpretable. This is a practice scenario, not a prescribed criterion for an actual learner.

### Scenario data

A fictional learner is practicing a school-based task with six observable steps. Independent completion across five sessions is:

| Session | Independent steps | Valid steps | Independent accuracy |
|---|---:|---:|---:|
| 1 | 3 | 6 | 50% |
| 2 | 4 | 6 | 66.7% |
| 3 | 4 | 6 | 66.7% |
| 4 | 5 | 6 | 83.3% |
| 5 | 5 | 6 | 83.3% |

### Participant steps

1. Define an independent step and any relevant prompt levels.
2. Identify conditions that must remain consistent or be documented.
3. List missing information, including prompt definitions, task difficulty, setting, materials, and learner perspective.
4. Use the [goal-development prompt](prompt-library.md#3-educational-goal-development-and-measurement) to brainstorm up to three target options.
5. Review each option for observable behavior, conditions, measurement, and individualized criterion.
6. Explain why a fixed greater-than-90% criterion may or may not fit this task.

### Evidence to retain

- [ ] One draft target.
- [ ] Operational definition.
- [ ] Measurement plan.
- [ ] Unresolved questions for educator or team review.

---

## Lab 3 — Data analysis and possible plateau

**Suggested time:** 35–45 minutes

**Purpose:** Describe a data pattern accurately, check the model's arithmetic, and avoid unsupported causal or mastery claims.

### Select a dataset

Choose one synthetic dataset:

- [Improving progress](datasets/improving-progress.csv)
- [Variable performance](datasets/variable-performance.csv)
- [Possible plateau](datasets/possible-plateau.csv)

The fields include session, opportunities, independent correct responses, prompted correct responses, and notes.

### Participant steps

1. Calculate independent accuracy for at least three sessions by hand.
2. Describe the pattern without explaining why it happened.
3. Ask the model to review the dataset using the [data-analysis prompt](prompt-library.md#5-data-analysis-and-progress-review).
4. Check arithmetic and every claim against the raw rows.
5. Identify at least three competing explanations.
6. State what additional evidence would distinguish those explanations.
7. Recommend one small, testable next step and a review date.

### Deliberate error challenge

Ask whether the data prove mastery. Reject an answer that treats a threshold or a small number of sessions as proof without considering generalization, prompt levels, data quality, and individualized criteria.

### Written response

Use these headings in your record:

- What the data show.
- What the data do not show.
- What the model suggested.
- What I verified or corrected.
- Competing explanations.
- Next step and review evidence.

---

## Lab 4 — Simulated Copilot email triage

**Suggested time:** 30–40 minutes

**Purpose:** Produce an advisory action report without inventing deadlines or taking actions in a mailbox.

**Practice boundary:** All messages below are fictional. Use the [email-triage prompt](prompt-library.md#7-morning-email-action-report). Do not connect a real mailbox during this lab.

### Simulated messages

1. **Classroom Teacher — Materials for tomorrow**  
   “Could you send the accessible copy of the worksheet before 3:00 p.m. today? We need to prepare materials for tomorrow's lesson.”

2. **Parent/Guardian — Home practice**  
   “When you have a chance this week, could you explain the new practice routine?”

3. **Building Administrator — Annual form due**  
   “Please submit the annual form by Friday at noon.”

4. **District Newsletter — Monthly updates**  
   “Here are this month's announcements and optional training links.”


6. **Meeting Organizer — Team meeting**  
   “Please respond to the invitation for the meeting scheduled next Tuesday.” No response deadline is stated.

7. **Classroom Teacher — Re: Accessible worksheet**  
   “I found the accessible copy. No need to send it now; thank you.”

8. **Service Coordinator — Service log correction**  
   “Please review the entry and return corrections by 10:00 a.m. tomorrow.”

9. **Vendor Updates — Product announcement**  
   “New features are available. Read more in our newsletter.”

10. **Team Member — Quick question**  
    “Can you call me when you get a moment?” No deadline or topic is provided.

### Participant steps

- Extract only actionable items.
- Preserve sender and subject as the source.
- Mark unstated or ambiguous due dates as unknown.
- Assign urgency 1–5 with a rationale.
- Identify the superseded worksheet request.
- Do not rank solely by sender title.
- Verify each action against the source text.

### self-check key

Message 7 supersedes the earlier worksheet request. The annual form and service log have explicit deadlines. The parent request has no exact deadline. Route coordination, meeting response, and the call request need clarification. Do not invent dates.

### Evidence to retain

A numbered action report with:

1. Task.
2. Source (sender and subject).
3. Due date, exactly as stated or “not stated / unclear.”
4. Urgency and rationale.
5. Recommended next step.
6. Verification note.

Do not connect a real mailbox or permit autonomous sending, deleting, archiving, forwarding, or committing.

---

## Lab 5 — Plan → Refine → Build → Refine

**Suggested time:** 40–50 minutes

**Purpose:** Apply the full iterative workflow to one role-relevant case and one meaningful task.

### Select a continuing case

Choose one role-relevant case from the [unified Buendía-family case collection](multidisciplinary-case-studies.md). All ten cases are equal options. Select one meaningful, observable task or professional workflow within your role and scope of practice—not an entire service area or domain.

### Stage 1 — Plan

Record:

- Learner strengths and priorities explicitly known.
- Task and setting.
- Facts, unknowns, and hypotheses separately.
- Whose perspective should be gathered.
- What successful performance means.

### Stage 2 — Refine

Ask the model to challenge assumptions and list missing observations. Do not ask it to write the goal yet. Decide which questions can be answered by observation, learner input, or team consultation.

### Stage 3 — Build

Choose one artifact:

- Task analysis.
- Checklist.
- Data sheet.
- Accessible practice sequence.
- Staff coordination note.

Use the relevant prompt from the [Prompt Library](prompt-library.md).

### Stage 4 — Refine

Test the artifact with a partner acting as learner or staff member. Record friction points and feedback. Ask the model for alternatives, then select one change and explain why.

### Evidence to retain

- [ ] Original plan.
- [ ] Questions and corrections from the refine stage.
- [ ] Artifact built.
- [ ] Test evidence and feedback.
- [ ] Revision and rationale.
- [ ] What the educator retained, rejected, or changed from the model's suggestions.

---

## Universal quality check

Before submitting any lab artifact, confirm:

- [ ] The task is meaningful and bounded.
- [ ] Information is fictional or approved.
- [ ] Facts, hypotheses, and unknowns are distinct.
- [ ] Student perspective is included.
- [ ] Access conditions and prompt levels are documented where relevant.
- [ ] Output is usable with a screen reader and keyboard.
- [ ] Calculations and claims are verified.
- [ ] Educator/team retains decision authority.
