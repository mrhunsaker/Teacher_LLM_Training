# Module 6: Microsoft Copilot Morning Email Triage

## Learning targets

- Use district-provided Microsoft 365 Copilot capabilities in Outlook to summarize email and extract actions.
- Create a date-organized to-do list with a suggested 1–5 urgency score.
- Configure important senders/recipients without treating the score as an automatic decision.
- Verify every action against the original email.

## First: understand the licensing and privacy boundary

Copilot capabilities differ by Microsoft 365 license, app, rollout, and district administrator settings. Microsoft documents Copilot Chat in Outlook capabilities with and without an add-on license, but access to inbox context and richer features can vary. Ask district IT which Copilot experience is approved and available.

Use the district-managed Microsoft 365 account and tenant. Microsoft describes enterprise data protection for eligible work/school Copilot experiences; that does not override district policy, administrator controls, or the need to confirm which product and account you are using. Never assume a personal Copilot account is approved for district email.

For this workflow, keep student-identifiable details out of prompts unless the district has explicitly approved the precise system and use. Prefer a summary that says “review classroom access question” rather than repeating sensitive student information. Do not paste email contents into an external LLM.

## Important: daily prompt versus automatic workflow

The prompt below creates a repeatable morning review, but it does not schedule itself. In the basic workflow, the teacher opens Outlook and runs it at the start of the workday. Outlook's built-in **Prioritize my inbox**, where available, can evaluate incoming messages using Microsoft's priority categories, but it is not the same as generating this custom dated 1–5 report. A truly scheduled unattended digest would require a district-approved automation such as Power Automate, appropriate licensing/connectors, administrator approval, and privacy/security review. Do not build an unattended email-flow or grant mailbox access to an unapproved service.

## Option A: Copilot Chat in Outlook

If enabled, open Outlook with your district account, select Copilot, and ask it to review the relevant inbox messages. Exact controls and feature names may differ. A typical prompt is below.

## Option B: Summarize an individual thread

Open the message thread and use the available Summary by Copilot/Summarize control. Check the summary against the full conversation, especially names, deadlines, decisions, attachments, and who owns the next step.

## Copy-ready morning prompt

> Review the email messages available to you in my Outlook inbox received since my last workday review. Do not send, reply, forward, delete, archive, flag, or move any messages. Do not create calendar events or tasks. This is a read-and-report-only request.
>
> **Priority context:** Treat messages from these important roles/senders as likely high priority: [enter district-approved role names or important contacts]. Treat messages addressed directly to me, where I am a required action owner, as more urgent than FYI messages. Also consider deadlines, safety, time-sensitive student access needs, required approvals, and meeting changes. Do not assume a sender is important merely because of their title.
>
> **Task:** Identify messages that require my action, a decision, a response, or follow-up. Include messages where I am a recipient or action owner. Exclude newsletters and FYI messages unless a concrete action or deadline is present.
>
> **Output format:**
> 1. **Urgent today:** list first, with received date, sender, subject, action required, due date/time if explicitly stated, and a suggested urgency score from 1–5.
> 2. **Upcoming by date:** group action items by explicit due date, earliest first. If no due date is stated, write “No date stated” rather than guessing.
> 3. **Waiting on others:** list the person/role and what I am waiting for.
> 4. **Reply needed:** list messages that need a response and the reason.
> 5. **FYI / no action:** include only a short count or brief list.
>
> **Urgency scale:** 5 = immediate action today due to explicit deadline, safety, or critical time-sensitive impact; 4 = action within one business day; 3 = action within several business days or before a near-term meeting; 2 = routine action with no near deadline; 1 = optional or low-impact. Explain each score in one short phrase. This is a suggested triage score, not a measured probability or an automatic priority label.
>
> **Accuracy rules:** Cite or identify the source email by sender, subject, and received date. Distinguish explicit deadlines from inferred timing. If dates conflict or are unclear, mark “verify.” Do not invent tasks, owners, or dates. Do not claim an email was handled. Do not omit a message because its content is brief.
>
> **Stop condition:** Return the report only. Wait for my review and further instructions.

## Create your priority list

Use district-approved role names or contact names in the prompt. Examples include supervisor, case manager, principal, related-service coordinator, classroom teacher, or a district safety contact. Avoid copying broad address books or distribution lists into the prompt. Define what makes a sender important and what makes a message actionable.

## The 1–5 scale

| Score | Meaning | Typical response |
|---:|---|---|
| 5 | Immediate: explicit same-day deadline, safety, or critical time-sensitive issue | Open and verify original email now |
| 4 | High: due within one business day or blocks another person's work | Review and plan response today |
| 3 | Moderate: due in several days or needed before a scheduled event | Add to dated work list |
| 2 | Routine: action needed, no near deadline stated | Schedule normal work time |
| 1 | Low: optional, informational, or low impact | Defer or no action |

Copilot may not know district-specific urgency. The teacher must review the message and apply professional judgment.

## Build a daily checklist

- [ ] Sign in to the district account and confirm the approved Copilot experience.
- [ ] Run the read-only prompt.
- [ ] Open original messages for every score 4 or 5 and every unclear deadline.
- [ ] Verify the due date, owner, and requested action.
- [ ] Move confirmed actions into the district-approved task system or personal work list.
- [ ] Mark messages handled only after completing the action yourself.
- [ ] Recheck the inbox during the day; the morning report is a snapshot, not continuous monitoring.

## Product limitations to know

Microsoft's Outlook “Prioritize my inbox” feature, where available, assigns high/normal/low priority based on its own criteria and can be customized. It is not the same as the custom 1–5 scoring prompt in this lesson. Microsoft's documentation notes that some message types and folders may not be evaluated and that the feature may be gradually rolled out. Do not assume it covers every message or every mailbox folder.

## Quality check

- Are you using the district account and approved product?
- Is the prompt read-only?
- Are dates explicitly sourced from emails?
- Are the priority scores explained?
- Have you checked high-priority items in the original thread?
- Has Copilot refrained from sending or changing anything?

## Practice assignment

Use a fictional set of five emails. Run the prompt, check the extracted actions and dates against the source messages, and correct any missed or invented item. Do not use real student or family messages for this practice.
