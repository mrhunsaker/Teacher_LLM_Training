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

Open Outlook using your district-managed Microsoft 365 work or school account. Select the Copilot button in Outlook's navigation/header area to open Copilot Chat alongside your inbox. Ask it to review messages in the relevant date range, identify messages requiring action, and produce the report using the copy-ready prompt below. The exact controls and available inbox context depend on your Outlook version, Microsoft 365 license, rollout, and district administrator settings. Microsoft documents basic inbox and calendar questions for eligible work/school accounts, with broader access to organizational context for accounts assigned a Microsoft 365 Copilot add-on license. See [Microsoft's instructions for chatting with Copilot in Outlook](https://support.microsoft.com/en-us/outlook/copilot-outlook/chat-with-copilot-in-outlook).

I include this option because Copilot Chat in Outlook is available for use with eligible work or school accounts, and this is an option available to Davis School District users. Availability of particular features and mailbox access can still depend on the district's configuration, account licensing, and administrator settings; confirm the approved experience with district IT.

## Other commercial LLM systems: ways to perform the same triage

The same workflow is not unique to Copilot. The essential task is to provide an approved AI system with authorized access to the messages (or a carefully selected set of message text), then use the same read-only triage instructions and verify the resulting report. There are two broad ways to do this: connect the LLM to Outlook, or use the LLM separately from Outlook.

### OpenAI: ChatGPT

- **Connected to Outlook:** ChatGPT offers an Outlook Email app/connector that can search and reference supported Outlook messages, summarize threads, and identify action items. In ChatGPT, open the app/connector directory, find **Outlook Email**, connect the Microsoft account that has access to the mailbox, and complete the sign-in and permission steps. Then ask ChatGPT to review a specified date range and return the morning triage report using the prompt below. The available actions depend on the ChatGPT plan/workspace, Microsoft Entra permissions, and administrator approval. See [OpenAI's Outlook Email and Calendar app instructions](https://help.openai.com/en/articles/12512241-outlook-email-and-calendar-apps-in-chatgpt).
- **Outside Outlook:** Open ChatGPT separately and paste only selected, non-sensitive email text or upload an approved export/document containing messages. Include sender, subject, received date, and any relevant thread context. Ask for the same date-organized report. This is a manual copy-and-paste workflow; ChatGPT cannot see the inbox unless an authorized connection is configured.
- **Important boundary:** A personal ChatGPT account or an available connector is not automatically approved for district email. Use only a district-authorized account/workspace and connection, and confirm data handling and permissions with district IT before connecting a mailbox.

### Anthropic: Claude

- **Connected to Outlook:** Claude provides a Microsoft 365 connector that can search and analyze Outlook email, calendar, Teams, SharePoint, and OneDrive data for supported accounts. In Claude, open **Settings/Customize → Connectors**, select **Microsoft 365**, sign in, and complete the required Microsoft Entra authorization. Organizational administrators must enable/consent to the connector for work or school accounts. Keep write tools disabled for this read-and-report workflow unless separately approved. Then ask Claude to search the selected date range and produce the triage report. See [Anthropic's Microsoft 365 connector setup](https://support.claude.com/en/articles/12542951-set-up-the-microsoft-365-connector) and [user connection guide](https://support.claude.com/en/articles/15183774-connect-to-microsoft-365).
- **Outside Outlook:** Use Claude separately and provide only approved, appropriately de-identified message text or an approved file export. Ask it to apply the same urgency scale, group actions by explicit due date, and identify the source message for each item. Without a connector or supplied content, Claude does not have access to the Outlook inbox.

### Google: Gemini

- **Connected to Outlook:** Gemini's standard Gmail features are designed for Gmail and Google Workspace mail, not as a general Outlook add-in. For an organization using Google's enterprise offering, **Gemini Enterprise** can be configured with a Microsoft Outlook data store/connector. This requires an administrator to configure the Microsoft Graph connection and permissions; users can then search and work with authorized Outlook email through Gemini Enterprise. See [Google Cloud's Microsoft Outlook connector documentation](https://docs.cloud.google.com/gemini/enterprise/docs/connectors/ms-outlook).
- **Inside Gmail:** If the mailbox is a Gmail/Google Workspace mailbox rather than Outlook, eligible accounts can use Gemini in Gmail to summarize threads, find messages, and extract action items from the Gmail side panel. See [Google's Gemini in Gmail guide](https://support.google.com/mail/answer/14355636).
- **Outside Outlook:** Open Gemini separately and provide only approved, appropriately de-identified message text or an approved export. Ask it to produce the same read-only triage report. Do not assume a consumer Gemini account can directly search a district Outlook mailbox.

### Other commercial LLM systems and automation platforms

Other enterprise LLM products may offer a native Outlook/Microsoft 365 connector, an approved third-party integration, or an API-based route. The general implementation pattern is:

1. Have district IT identify an approved product and authorize its Microsoft 365/Outlook connection using the minimum required permissions (normally read-only mail access for this lesson).
2. Restrict the connection to the user's own mailbox and the folders/date range needed for the review. Do not grant send, delete, move, or mailbox-wide write permissions for a triage-only task.
3. Use the copy-ready prompt below to request a dated action report, source references, and an explicit “verify” marker wherever dates or ownership are unclear.
4. If a scheduled digest is desired, have IT build and test a controlled workflow using an approved automation service (for example, Microsoft Power Automate with an approved model/API endpoint). Apply least-privilege access, data-loss prevention rules, retention controls, and human review before deployment.

If no approved connector exists, the simpler alternative is to work outside Outlook: select a small set of messages, remove unnecessary personal/student information, and provide the text to the approved LLM. This is manual and less convenient, but avoids granting a third-party service ongoing mailbox access. Do not forward district messages to an external AI address or upload mailbox exports to a personal account.

## Locally installed LLMs

It is also technically possible to perform this workflow with a locally installed LLM. A local model can be run on the user's computer and supplied with messages through a local mail client, approved export, or a custom integration to Outlook/Microsoft Graph. This can keep processing on the local device, but it is not automatically private or policy-compliant: mailbox access, local storage, model files, logs, and any supporting software still require security review.

Running capable local models can consume substantial RAM, GPU memory/VRAM, CPU capacity, disk space, and battery, and may slow other applications. Building and maintaining the mail connection, model runtime, and safeguards also requires technical work. This is a large drag on computer resources and beyond the scope of this course. The course focuses on district-approved hosted tools and simple, human-reviewed workflows.

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
