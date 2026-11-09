---
name: contextual-use-cases
description: Write use cases grounded in Contextual Design (Beyer & Holtzblatt) data, namely consolidated sequences, the User Environment Design (UED) and its focus areas, breakdowns, the affinity diagram, flow model roles and personas. Produces Cockburn-style use cases (brief description, actors, level, trigger, preconditions, guarantees, main success scenario, extensions, traceability). Use this skill whenever the user asks for use cases, casos de uso, or functional requirements derived from work models, a UED, storyboards or wireframes, even if they don't say "Contextual Design".
---

# Use cases from Contextual Design

In Contextual Design, the consolidated sequence (or storyboard) says what the user does, the UED defines the functions, and the use case works out precisely what happens when the user operates those functions and how the system responds (Beyer & Holtzblatt, 1999, pp. 339–340). So a use case is written from the project's data and design, not from an idea.

The templates (Markdown and LaTeX, English and Portuguese labels) and a worked example are in `references/templates.md`.

## 1. Read the inputs

Find, in the project:

- the **consolidated sequence** for the task: trigger, activities, intents, steps, breakdowns;
- the **UED focus area(s)** involved: purpose, functions (user-invoked and automatic), objects, links;
- the **breakdown table**, **affinity groups**, **flow model roles** and **personas**.

If there is no UED, tell the user: the book says use cases need a stable UED to build on. Write a provisional use case from the sequences only if they want one.

Write in the project's format and language (a Portuguese LaTeX report gets a Portuguese LaTeX use case).

## 2. Choose actor, goal and level

- **Primary actor** is a role from the consolidated flow model ("Group coordinator"), not a person or a persona. Other people or systems involved are secondary actors.
- **Goal** comes from an intent in the consolidated sequence, written as actor + verb + object ("Get the group to decide on the proposal"). ONE goal per use case. If you think
there is more than one, you should write a separate use case for each. 
- **Level** is user goal by default (one focus area, or two linked ones). Use 
summary when a task takes several sessions to complete. Use subfunction
for a a small step that needs to be reused in different contexts.

## 3. Fill in the fields

- **ID and name**: `UC-NN`, with the goal as the name.
- **Brief description**: short text, first in the use case. Who the actor is, what they want, the outcome, and what the system does for them. No UI, no step list.
- **Primary actor, secondary actors, level, scope** (the system under design) and **focus area(s)**. NEVER USE UI terms; use the UED functions instead.
- **Trigger**: from the sequence model. If the real trigger disappears with the system (e.g. "noticing the price went up"), say what replaces it; automatic UED functions often do. Keep it short
- **Preconditions**, **minimal guarantee** (what holds even if the goal fails) and **success guarantee**.
- **Stakeholders and interests**: from the flow and cultural models. The scenario must protect these.
- **Main success scenario**: 3–9 numbered steps or an appropriate graphical representation (e.g. sequence diagram). Each is the actor acting, the system responding, or the system involving a secondary actor. If a distinction must be made between the actor's intent and the system's response, write them in double collumn format. NEVER
USE UI TERMS.
- **Extensions**: for each step, ask how it can fail or what else can happen. Write `<step><letter>. <condition>: <handling>`, ending with where it rejoins or how it ends. Every breakdown from the data that touches this goal must appear here, or be solved by the main scenario. Cite its ID.

## Writing rules

- **NEVER USE UI TERMS OR WIDGETS.** Write at the level of intention ("the coordinator records the group's decision"), not widgets ("clicks Save"). UI is designed later; screen-level steps lock in a layout too early.
- **Each step should use a UED function.** If a step needs a function the UED doesn't have, keep the step and tell the user about the gap in the chat.
- **Write from the data.** Use the users' own words and real values in conditions (e.g. "no dorm", "limit of 300 € per person"). Don't invent behaviour the data doesn't show; mention unanswered questions in the chat instead.
- **Keep secondary intents.** If users needed to "justify cuts to the group", the scenario must not silently drop rejected options.

## Output

The file contains **only the use case(s)**: no introduction, goal list, analysis or findings. Save it where the project keeps its documentation, tell the user where, and don't overwrite existing requirements without asking. Mention UED gaps or open questions briefly in the chat. If some part needs clarification from the point of view of a reviewer, justify why you wrote it that way at the end of the page.
