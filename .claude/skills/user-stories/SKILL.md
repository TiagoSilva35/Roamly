---
name: user-stories
description: Generate or review user stories (histórias de utilizador) grounded in the project's Contextual Design data (consolidated sequences, UED focus areas, breakdowns, flow-model roles, personas). Applies the standard template (As a / I want / so that), the Three Cs, INVEST, epics vs stories, and Given/When/Then acceptance criteria. Use this skill whenever the user asks to write, generate, rewrite, split, check, review or critique user stories or their acceptance criteria, even if they don't name INVEST. Not for building the story map itself.
---

# User stories

A user story is a short description of a capability, told from the point of view of the person who wants it. It is a placeholder for a conversation, not a specification (Card, Conversation, Confirmation). The **Confirmation** part is the acceptance criteria.

Stories here are written from the project's research data, not from ideas. LLMs tend to produce generic stories that are really epics ("As a user I want to plan my trip"). That is the main failure to avoid.

This skill covers the stories only. If the user asks for the story map (backbone, release slices), say this skill doesn't cover it; you can still write or review the stories that go on the map.

This skill has two modes: **generate** and **review**. If the user doesn't say which, look at what exists. If there are stories already, review them. If there are none, generate.

## 1. Read the inputs

Find, in the project:

- the **consolidated sequence(s)**: activities, intents, triggers, steps, breakdowns;
- the **UED focus areas** and their functions. Each story should belong to one focus area;
- the **breakdown table** (IDs like FM.1, SM.14, AM.23, PM.28, CM.31) and interview records (UE07, AE05, U0-05…);
- the **consolidated flow model roles** ("organizer", "group member", "travel agent") and the **personas**;
- any existing **story file or backlog**, so you keep its IDs and don't duplicate stories. If stories sit on a story map, keep the activity or step each one belongs to.

In this repo these are under `DOCS/1st_submission/` (report `relatorio/seccoes/`, models in `work_models/`). Deliverable 2 stories live in `DOCS/2nd_submission/story_map/`.

Write in the project's language and format. The Roamly report is in Portuguese, so stories are "Como …, quero …, para …".

## 2. Generate

### 2.1 The story

Template:

> **As a** [role], **I want** [capability], **so that** [value].
> **Como** [papel], **quero** [capacidade], **para** [valor].

- **Who**: a role from the flow model, or the persona's role ("as the group organiser"). Never "user", "customer" or "system". Never the team ("as a developer"): technical work is an *enabler*, not a story.
- **What**: what the person wants to be able to do, not how it is built. No widgets, screens, buttons or window names ("click", "tab", "Caderno window", "dropdown"). "See the final price with luggage" is a what; "a 'Preço final' column in the Caderno" is a how.
- **Why**: the real benefit, in the users' own words where possible ("so I stop being asked to 'send a print'"). If you can't name a value, the story probably shouldn't exist.
- **One goal per story.** If the *I want* has "and", "or", "e", "ou" joining two capabilities, split it. No pronouns that point at another sentence ("it", "isso").
- Give each story a short **title** (verb + object), an **ID** (`US-NN`, keep existing IDs), a **size** (S or M; anything L is an epic and must be split) and a **priority**.
- **Origin**: cite the breakdown or record IDs that justify it. A story without evidence is invented; flag it as a hypothesis or drop it.
- **Dependencies / risks**: name stories it depends on and open risks (e.g. "needs access to suppliers' data").

### 2.2 Epics

An epic is a large story that contains several stories (e.g. the epic "Sign up" contains "sign up with email", "read the privacy policy first"…). It is fine to group stories under an epic, but an epic is never a backlog item on its own. Signs of an epic: it spans more than one focus area, it can't be estimated, it would take more than an iteration, or its acceptance criteria would be a whole list of features. Split it into stories that each deliver value on their own.

### 2.3 Acceptance criteria

Write acceptance criteria for every story, at least for the high-priority ones, as **Given / When / Then**:

> **Given** [context or precondition], **when** [the user does something], **then** [observable result].
> **Dado** [contexto], **quando** [ação], **então** [resultado observável].

- At least one success scenario and one failure or edge scenario (missing data, limit exceeded, site unreadable…).
- Observable and checkable, with real values from the data where possible ("a limit of 300 € per person", "luggage +34 €").
- Still no UI widgets. "Then the total per person shows the new value" is fine; "then the red label appears in the top bar" is not.
- Criteria are the boundaries of the story, not a design. If a criterion adds a new capability, it is a new story.

## 3. Review

For each story, check the items below and give a verdict: **OK**, **Rewrite** or **Split**. Report only the problems, with a short reason and a proposed rewrite.

**Template and the Three Cs**

The **template** is *As a [type of user], I want [some goal or feature], so that [some benefit, value or reward]*. It has three parts:
- **Who (persona)**: the specific user role, so the team designs for a real person and not an abstract system.
- **What (action)**: the capability wanted, without saying how it must be built.
- **Why (value)**: the benefit or need behind it, so the team understands the motivation and can make trade-offs.

The **Three Cs** (Ron Jeffries) say a story is a lifecycle, not just a sentence:
- **Card**: the short written story (sticky note, ticket) that stands in for the conversation.
- **Conversation**: the discussions between product owner, designers, developers and testers that fill in the details.
- **Confirmation**: the acceptance criteria (Given/When/Then) or tests that show the story was built correctly and delivers its value.

Check:
- **Template**: has all three parts. The who is a real role/persona, not "user"/"system"/"developer". The what is a capability, not a design. The why is a real benefit, not a restatement of the capability ("I want X so that I have X").
- **Card**: short enough to fit on a card; details that belong in the conversation or the criteria are not crammed into the sentence.
- **Conversation**: leaves room to discuss how; doesn't read as a fixed specification. Open questions that need a conversation are listed.
- **Confirmation**: has acceptance criteria (checked in detail below).

**INVEST**
- **Independent**: can be prioritised and delivered on its own; dependencies are few and stated.
- **Negotiable**: describes intent, not a fixed design. Flag UI terms (windows, buttons, labels, colours, screen names) in the story *or* the criteria.
- **Valuable**: delivers value to a user or stakeholder. Purely technical tasks are enablers.
- **Estimable**: clear enough to size. Vague words ("easily", "better", "optimised") or unknown technology mean a spike is needed first.
- **Small**: fits in an iteration; S or M. Flag epics.
- **Testable**: has objective acceptance criteria.

**Atomic and well written**
- One goal; no "and/or" joining capabilities; no dangling pronouns; one actor.

**Grounding**
- Cites breakdown/record IDs that really exist in the data. Flag invented behaviour and stories the data doesn't support.
- Uses the users' words and real values.

**Acceptance criteria**
- In Given/When/Then; at least one success and one failure/edge case; observable; no UI; no hidden extra capability.

**Across the set** (check once)
- No duplicate or overlapping stories.
- IDs are unique and consistent with other documents (report, use cases).
- Dependencies point at stories that exist.

Output the review as a table (ID · verdict · problem · proposed rewrite), then a short list of findings across the set. Don't rewrite the file unless the user asks.

## Output (generate mode)

- A legible **table of stories**: ID, size, priority, title + story, acceptance criteria, origin, dependencies/risks. Use the project's format (Markdown and/or a LaTeX `longtable` for the report). If the stories belong to a story map, keep its grouping.
- Save where the project keeps its stories, tell the user where, and don't overwrite existing stories without asking.
- In the chat, list briefly: open questions, stories with no evidence, and suggested candidates for use cases (highest-priority stories).
- In 2nd_submission/user/AI_log, write what the prompt was, the tasks you defined, and the output you generated. Leave space for the user to add their own notes.
