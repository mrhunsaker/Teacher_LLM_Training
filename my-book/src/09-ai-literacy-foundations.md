# Module 7 — AI Literacy Foundations: What Generative AI Does and Does Not Do

## Purpose

This module gives educators a practical mental model of generative artificial intelligence (AI), especially large language models (LLMs). The goal is not to teach computer science. The goal is to help teachers predict common failure modes, choose appropriate tasks, and evaluate outputs before using them in professional work.

## Learning outcomes

By the end of this module, participants can:

- Explain in plain language what an LLM does when it generates a response.
- Distinguish an LLM from a search engine, a database, and a rules-based calculator.
- Explain why a fluent answer may still be incorrect, incomplete, biased, or fabricated.
- Identify how context, prompt design, model settings, and available tools affect outputs.
- Describe why model responses can vary across attempts.
- Decide when an AI tool adds value and when not using it is the better choice.

## A practical mental model

A large language model is a system trained on large collections of data to recognize patterns in language and generate likely continuations in response to input. It processes the prompt and available context and produces a sequence of tokens (small units of text or other data). The output can be useful because the model has learned many patterns and relationships. It is not proof that the model has checked the world, understood a learner as a person, or verified every statement.

A useful shorthand is:

- The prompt supplies a task and context.
- The model generates a response based on learned patterns and the context available to it.
- Additional tools, such as web search, file retrieval, or spreadsheet functions, may supply external information or calculations when enabled.
- The educator checks the result against authoritative sources, observations, policy, and professional knowledge.

Do not assume every chatbot response used live web search, read a file, remembered a previous conversation, or ran a calculation. Ask what sources or tools were actually used, and verify important claims independently.

## LLMs, search engines, databases, and calculators

**LLM:** Generates language and other supported content from patterns and supplied context. It can summarize, draft, reorganize, brainstorm, and help inspect information. It can also invent plausible details.

**Search engine:** Retrieves and ranks indexed sources. Search results still require source evaluation; retrieval does not guarantee truth.

**Database:** Stores structured records. A database query returns records that match the query and access permissions; it does not independently interpret their educational meaning.

**Calculator or spreadsheet formula:** Executes specified mathematical operations. The result can still be wrong if the formula, input data, or interpretation is wrong.

Some AI products combine these capabilities. The interface may look like one assistant, but the underlying operations are different. Identify whether a task needs generation, retrieval, calculation, or a combination.

## Why fluent answers can be wrong

LLMs are optimized to generate plausible responses, not to guarantee factual correctness. Errors may include:

- **Hallucination:** invented facts, citations, policy statements, or details presented confidently.
- **Omission:** leaving out a relevant constraint, caveat, or piece of context.
- **Overgeneralization:** applying a common pattern to a learner or setting where it does not fit.
- **False precision:** supplying exact numbers, dates, or ratings unsupported by the input.
- **Assumption laundering:** turning a tentative hypothesis into a statement that sounds like an observed fact.
- **Outdated information:** describing features, laws, guidance, or product behavior that has changed.
- **Bias or representational gaps:** reflecting limitations or stereotypes in data and system design.
- **Instruction-following failure:** ignoring a constraint, changing the task, or inventing missing information.

A confident tone, polished format, or citation-like string does not establish reliability.

## Why outputs vary

Responses can differ because of prompt wording, conversation context, model version, system instructions, sampling settings, connected tools, retrieved sources, and product updates. A repeated prompt may produce a different draft. Variation is not itself evidence that one answer is correct.

For consequential tasks, make the process reproducible: preserve the prompt, input definitions, tool/source details, date, output, and educator revisions where district policy permits. Verify results rather than relying on repeatability alone.

## Context windows and missing information

An AI assistant can only use information available in the current interaction or through explicitly enabled memory, files, or connected tools. Long conversations may exceed context limits or have information summarized. The model may not know that an important fact is missing.

Teach the model to label:
- facts explicitly supplied,
- reasonable interpretations,
- hypotheses to investigate,
- unknowns that must remain unknown.

The educator should not ask the model to fill a gap with a guess.

## Prompt quality is task design

A good prompt does not simply add more words. It defines a bounded task:

1. **Task:** one action the model should perform.
2. **Context:** only information relevant to that action.
3. **Constraints:** what it must not infer, decide, or do.
4. **Output:** format and level of detail needed.
5. **Verification:** claims, calculations, or sources that need checking.
6. **Stop condition:** where the model must pause and ask before proceeding.

The Plan → Refine → Build → Refine process applies these controls iteratively. The teacher remains in charge of scope and decisions.

## When not to use AI

Do not use an AI tool when:

- The tool or data use has not been approved for the information involved.
- The task requires a professional determination the model is not qualified or authorized to make.
- A direct observation, conversation with the learner, or consultation with a qualified colleague is more appropriate.
- The output cannot be verified in the available time.
- The task is too sensitive, high-stakes, or poorly defined for the available safeguards.
- The tool's accessibility, security, or reliability is inadequate for the task.
- AI adds complexity without meaningful benefit.

Choosing not to use AI is a valid and sometimes preferred professional decision.

## Demonstration: same task, different operation

Consider the request: "Tell me whether this student has mastered digital access."

That request asks for an unsupported educational conclusion. A bounded alternative might be:

"Using only the fictional session data below, organize the recorded performance by session. Keep independent and prompted responses separate. Identify missing information and patterns that warrant educator review. Do not determine mastery, infer a disability-related need, or recommend a change to an IEP. Stop after listing the observations and questions for the educator."

If arithmetic is needed, verify it with a spreadsheet or calculator. If current product guidance is needed, consult the current official documentation. If the student's actual performance is at issue, consult valid observations and the student/team.

## Guided activity: identify the operation

For each task, identify whether the primary need is generation, retrieval, calculation, direct observation, or professional judgment.

1. Draft three alternative task-analysis formats from an educator-approved skill definition.
2. Check the current Microsoft documentation for a feature's availability.
3. Calculate the percentage of independent steps completed across sessions.
4. Determine whether glare is interfering with a student's access in a particular classroom.
5. Decide whether a proposed annual goal is appropriate for an individual learner.

**Suggested responses:** 1 generation; 2 retrieval; 3 calculation; 4 direct observation and assessment; 5 professional judgment and IEP-team process. Some tasks combine operations, but the distinction helps determine what must be verified.

## Knowledge check

1. Why can a fluent LLM answer still be false?
2. What is the difference between generating a response and retrieving a current source?
3. Name two reasons repeated responses may vary.
4. What should the model do when a necessary fact is missing?
5. Give one situation in which not using AI is the better choice.

## Exit ticket

Complete these statements:

- An LLM is useful for...
- An LLM cannot establish...
- Before I rely on an output, I will verify...
- I will choose not to use AI when...

## independent review guidance

Avoid teaching a deterministic or overly technical account of model internals. Explain that products and models differ and change. Emphasize the distinction between language generation and verification. Ask participants to provide examples from their own professional workflows, but use fictional or approved data only. Correct the misconception that a single universal description applies to every AI product.
