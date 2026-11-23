---
name: bdd-scenarios
description: Generate or review BDD scenarios in Gherkin (Feature / Scenario / Given / When / Then) for the project's use cases, following Dan North's "Introducing BDD" and the course brief (Deliverable 2, §4) — one scenario for the main success scenario (happy path) and at least one per exception flow, traceable to the use case extensions, user stories and breakdowns. Use this skill whenever the user asks for BDD, Gherkin, cenários BDD, .feature files, acceptance scenarios or executable specifications for a use case or story, even if they don't name Dan North.
---

# BDD scenarios in Gherkin

BDD (Dan North, 2006) replaces "test" with **behaviour**: each scenario is a sentence-sized example of how the system behaves, written in the business's own words, so that users, analysts and developers share one **ubiquitous language**. A scenario is an acceptance criterion that can be executed: *Given some initial context, When an event occurs, Then ensure some outcomes*.

The course brief asks for "actual BDD scenarios (in Gherkin) for each use case's main flow (happy path) and at least one exception flow". The grading looks at scenario quality and **traceability back to the use cases**. The course framing: an AI-drafted scenario nobody on the team checked is not living documentation, it is a guess dressed up as a spec. So every scenario must come from the use case and the data, and the team must be able to defend each one.

Templates (Gherkin in Portuguese and English, LaTeX inclusion, traceability table) are in `references/templates.md`.

This skill has two modes, **generate** and **review**. If the user doesn't say which, look for an existing `.feature` file for that use case: review it if it exists, generate otherwise.

## 1. Read the inputs

- The **use case** (Cockburn): goal, primary and secondary actors, trigger, preconditions, minimal and success guarantees, main success scenario, extensions. In this repo: `DOCS/2nd_submission/casos_de_uso/corrigidos/`.
- The **user stories** it traces to, with their Given/When/Then acceptance criteria (`DOCS/2nd_submission/story_map/historias_roamly.md`).
- The **breakdowns** and interview records it cites (Deliverable 1, Table 14; `DOCS/1st_submission/`), for real values.
- The **domain terms** already used (use cases, stories, glossary if it exists). Scenarios must use the same words.

## 2. Map the use case to scenarios

| Use case | Gherkin |
|---|---|
| Goal + primary actor + value | `Funcionalidade:` title (the goal) and the *Como / Quero / Para* narrative |
| Preconditions shared by all scenarios | `Contexto:` (Background) with `Dado` steps |
| Main success scenario | one scenario for the happy path; its `Então` checks the **success guarantee** |
| Each extension that is an exception or alternative | one scenario titled by the **condition**, tagged with the extension (`@ext-3a`) |
| Minimal guarantee | an `Então`/`E` in the failure scenarios: what still holds when the goal fails |
| Same behaviour with different data (limits, boundaries) | `Esquema do Cenário` + `Exemplos` |

At least the happy path and one exception per use case (brief). Prefer one scenario per extension that has a breakdown behind it. Extensions marked for a later release can be left out or tagged `@release-2`; say which in the chat.

## 3. Writing rules

- **Real Gherkin.** First line `# language: pt` for Portuguese keywords (`Funcionalidade`, `Contexto`, `Cenário`, `Esquema do Cenário`, `Exemplos`, `Dado`, `Quando`, `Então`, `E`, `Mas`), or English keywords without it. Two-space indentation. One `.feature` file per use case.
- **Given = a state, When = one event, Then = observable outcomes.** Givens describe the situation ("a proposta foi partilhada com o grupo"), not actions taken to get there. Exactly **one `Quando` per scenario**: one behaviour per scenario. Use `E` to join extra givens or extra outcomes, never a second event.
- **Outcomes are observable** by an actor of the use case: what someone sees, receives or can do next. Never internal state ("the database stores…"), never "the system works correctly".
- **Declarative, no UI.** No clicks, buttons, screens, fields, colours or window names. Write at the level of the use case steps ("o organizador regista o que o grupo combinou"), so the scenarios survive a redesign.
- **Ubiquitous language.** Same nouns and verbs as the use case and the stories (organizador, membro do grupo, proposta, item, total por pessoa, limite por pessoa…). The **same step is always written with the same words** across scenarios, so it maps to one step definition (North: reuse givens, events and outcomes).
- **Specification by example.** Concrete values from the data, not placeholders: "300 € por pessoa", "o voo subiu 19 €", «dormitório não». Values must stay consistent inside a scenario (if a 19 € rise takes 294 € to 313 €, say so).
- **Scenario titles** name the situation that makes the scenario different, as North does ("Account is in credit"): "Um membro só pode ir noutras datas", not "Teste 3" or "Verificar datas".
- **Traceability.** Tag the feature with the use case (`@UC-04`) and each scenario with the step or extension, the stories and the breakdowns it covers (`@passo-principal @US-14 @ext-2a @FM.9`). Tags have no spaces.
- **Don't invent behaviour.** If a scenario needs behaviour the use case doesn't describe, don't add it to the scenario; report the gap in the chat (the use case or a story must change first).

## 4. Review

For each scenario give a verdict (**OK** / **Rewrite** / **Drop**) and report only problems, with a proposed rewrite:

- Gherkin is valid (keywords, language line, indentation, one feature per file).
- One `Quando`; givens are states; outcomes are observable; no UI terms.
- Title names the distinguishing situation.
- Steps reuse the same wording for the same behaviour; terms match the use case and stories.
- Values are concrete, come from the data and are consistent.
- Traceable: every scenario points at a use case step or extension; the happy path checks the success guarantee; failure scenarios check the minimal guarantee where relevant.
- Coverage: happy path + at least one exception; every extension with a breakdown has a scenario or a stated reason why not.
- Consistent with the use case: no scenario contradicts an extension or adds behaviour.

## Output

- The `.feature` file, saved in `DOCS/2nd_submission/bdd/` as `UC-NN-<goal-slug>.feature`. Don't overwrite an existing one without asking.
- For the report: a short traceability table (scenario · use case step/extension · stories · breakdowns) and the feature included verbatim (see `references/templates.md`).
- In the chat: gaps found (behaviour the use case or stories don't cover), extensions left out and why.
- In `DOCS/2nd_submission/AI_log/<person>/`, write the prompt, the tasks you defined and the output, leaving space for the user's own notes.
