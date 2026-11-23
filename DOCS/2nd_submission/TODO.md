# Deliverable 2 (Description) 
## Repository layout

```
DOCS/
  1st_submission/            # frozen: what was delivered in Deliverable 1
    relatorio/               # LaTeX report (compiles from here: latexmk -pdf main.tex)
    work_models/             # interviews, flow/cultural/sequence/artifact/physical models, UED, wireframes
  2nd_submission/
    TODO.md                  # this file
    AI_log/                  # everyone's AI logs (feed J4 and T7)
    casos_de_uso/            # first versions of UC-01, UC-02, UC-04 (AI-generated, kept unchanged; UC-04's first English version is in commit 60d2c25)
      corrigidos/            # revised UC-01, UC-02, UC-04 (T3, T5, T6); these go in the report (§3.3)
    diagramas/diagrama_contexto_nivel0/  # context diagram (G1), in the report (§3.1)
    diagrams/                # use-case diagram (J1), in the report (§3.2)
    bdd/                     # one Gherkin .feature per use case (T4, G3, J3); included verbatim in the report (§4)
    relatorio/               # created (T1): main.tex, seccoes/, figuras/. Filled: cover, intro, §1, §2, §3, §4 (UC-04). Empty: §5–§7
    story_map/               # done (Jo1/T2): story_map.png + historias_roamly.md/.tex (the .tex is generated from the .md)
    ddd/                     # to create (Jo2, Jo3, G4): domain model, context map
```


## Decisions (não encontrei context diagrams e use case diagrams nos conteudos do prof)
- [x] **Which 3 use cases** get the full Cockburn treatment. Decided: the three below, written and in the report (§3.3).
  - **UC-01** Define the trip's limits (US-02, US-28)
  - **UC-02** Know the real total per person (US-06, US-09, US-10). UC-04 already depends on it.
  - **UC-04** Get the group to decide on the proposal (US-14, US-15, US-31, US-16, US-18; US-17 in Release 2 as an extension). A draft already exists.
- [ ] **Use draw.io for the context diagram: https://miro.com/blog/context-diagram/**
- [ ] ***And for each use case diagram: https://www.geeksforgeeks.org/system-design/use-case-diagram/***

## Task list by report section

| # | Section (brief §) | Task | Owner | Reviewer |
|---|---|---|---|---|
| ~~T1~~ | ~~Front page, Intro, §1 Brief~~ | ~~Create `2nd_submission/relatorio/` from Report 1's `main.tex` (title "Deliverable 2: Description", version, page numbers off on the cover). Introduction and Brief  and update them with what changed.~~ | ~~Tiago~~ | ~~Gonçalo~~ |
| ~~Jo1~~ | ~~§2 Story map~~ | ~~**Backbone and slices.** Build the Patton map: user activities and steps (left to right) from the consolidated sequence and UED areas 1→6, covering at least one full journey (idea → budget → compare → decide with group → pay). Draw the MVP / release-1 line and later slices.~~ | ~~João~~ | ~~Tiago~~ |
| ~~T2~~ | ~~§2 Story map~~ | ~~**Stories.** Write the stories under each step as *As a / I want / so that*, using flow-model roles and the personas, not "user". Check each against INVEST: split epics, no technical tasks. Add Given/When/Then acceptance criteria to the release-1 stories. Make a legible table of all stories (id, step, story, criteria, priority, evidence id). Reuse and rework US-01…US-14 from the backlog.~~ | ~~Tiago~~ | ~~João~~ |
| ~~G1~~ | ~~§3.1 Context diagram (L0)~~ | ~~Use-case context diagram: Roamly as one box, external actors (traveller/coordinator, companions, family, partner agent, flight/hotel suppliers, payment provider, price source). This is not the CD context diagram (footnote in the brief).~~ | ~~Gonçalo~~ | ~~Tiago~~ |
| ~~J1~~ | ~~§3.2 Use-case diagram (L1)~~ | ~~All use cases from the release-1 stories, with `<<include>>` / `<<extend>>` (e.g. "Calculate total per person" included by UC-02/UC-04, "Alert price rise" extending UC-04). Name them by goal (actor + verb + object). Mark levels (summary / user goal / subfunction, Cockburn).~~ | ~~José~~ | ~~Gonçalo~~ |
| ~~T3~~ | ~~§3.3 Use case UC-04~~ | ~~Revise the UC-04 draft into the final version. Keep the Cockburn fields; at least one exception flow (already has several); traceability to stories from T2. (AI versions kept in `casos_de_uso/` and commit `60d2c25`.) **Status: written** (`casos_de_uso/corrigidos/`, report §3.3); waiting for review.~~ | ~~Tiago~~ | ~~José~~ |
| ~~T5~~ | ~~§3.3 Use case UC-02~~ | ~~Fully worked UC-02 (Cockburn template, same fields and macros as UC-04), at least one alternate/exception flow, every breakdown from area 3 handled or cited. **Status: written** (`casos_de_uso/corrigidos/`, report §3.3); waiting for review.~~ | ~~Tiago~~ | ~~Gonçalo~~ |
| ~~T6~~ | ~~§3.3 Use case UC-01~~ | ~~Fully worked UC-01, same template, at least one alternate/exception flow, breakdowns from area 1 handled or cited. **Status: written** (`casos_de_uso/corrigidos/`, report §3.3); waiting for review.~~ | ~~Tiago~~ | ~~João~~ |
| ~~J4~~ | ~~§3.4 AI use reflection on a UC~~ | ~~Put the AI-generated UC-04 next to the corrected T3 version and write the short note: what was wrong, misleading, missing, and why. **The note is already in §3.4** (table for the three use cases; full log in `AI_log/tiago/2026-11-23-review-use-cases.md`). Still to do: add the AI-provided UC-04 to §3.4 and review the note. The note compares with the versions in `casos_de_uso/`; if you show the older English one (`60d2c25`), say what changed between the two.~~ | ~~José~~ | ~~João~~ |
| ~~J6~~ | ~~§3.2 Use-case diagram (L1)~~ | ~~Update after the use-case review: link UC-02 to «Sites dos fornecedores» (secondary actor); mark UC-04 as summary level («resumo»). Then delete the "tem de ser atualizado" sentences in the notes of UC-02 (1) and UC-04 (1).~~ Done: `.drawio` and `.png` updated (UC-04 in blue, legend «Azul: resumo»), notes cleaned. | ~~Tiago~~ | ~~José~~ |
| ~~T8~~ | ~~§2 Story map~~ | ~~Align US-08 with UC-04 (*b) and the UED: the price-rise alert goes to the whole group, without urgency messages. Regenerate `historias_roamly.tex` and delete the last sentence of UC-04 note (3).~~ Done: US-08 rewritten (organiser and members are alerted; new criterion 3, no urgency messages), table regenerated. | ~~Tiago~~ | ~~João~~ |
| ~~T4~~ | ~~§4 BDD~~ | ~~Gherkin for UC-04: one happy-path scenario + at least one exception scenario (e.g. price rises while the group decides, deadline passes). **Status: written** (`bdd/UC-04-decide-with-the-group.feature`, 8 scenarios; report §4.1 with traceability table); waiting for review. Open point: in *b the 19 € rise takes the total to 313 €, over the 300 € limit, and UC-04 doesn't say whether the organiser is warned (UC-02 4b does).~~ | ~~Tiago~~ | ~~Gonçalo~~ |
| G3 | §4 BDD | Gherkin for UC-02: happy path + at least one exception. Use the `bdd-scenarios` skill (`.claude/skills/bdd-scenarios/`) and follow `bdd/UC-04-…feature` and report §4.1 (same format, tags and traceability table). | Gonçalo | José |
| J3 | §4 BDD | Gherkin for UC-01: happy path + at least one exception. Use the `bdd-scenarios` skill and follow `bdd/UC-04-…feature` and report §4.1. | José | Tiago |
| Jo2 | §5 DDD | **Domain model** (class-style diagram) in the ubiquitous language: Trip, Proposal, Option (flight/stay/activity), Budget, Total per person, Group, Member/Coordinator, Vote/Opinion, Availability, Decision, Price alert, Expense share, Payment… Derived from the artifact and sequence models, consistent with the names used in the use cases. | João | Gonçalo |
| Jo3 | §5 DDD | **At least two bounded contexts** and a context map (e.g. *Trip Planning & Pricing* / *Group Decision* / *Group Payments*). Say what each owns, which terms change meaning across them (e.g. "Proposal", "Member"), and the relationships between them. | João | José |
| G4 | §5 DDD | **Glossary.** Short definition of each ubiquitous-language term, linked to its bounded context. | Gonçalo | João |
| T7 | §6 AI reflection | Write the section from everyone's notes (see "Everyone" below): where AI helped, where it got things wrong or missed the point (generic epics in stories, UI words in use cases, invented behaviour…). Concrete examples. | Gonçalo | Everyone |
| G6 | §7 Conclusion | How our understanding of the project changed from D1 to D2; open concerns and questions. | Gonçalo | Everyone |
| J5 | Final pass | Consistency across sections: same actor/term names in stories, use cases, BDD, DDD; traceability story → UC → BDD; annexes (team organisation table, AI-use annex); compile; page numbers; version. | José | Everyone |

## Totals

Sizes used to balance the work: small = 1, medium = 2, large = 3 (story map, stories, domain model). Everyone started with 8; Tiago took over UC-01 and UC-02 from José and Gonçalo.

| Person | Tasks | Reviews |
|---|---|---|
| **Tiago** | T1 report setup, intro, brief (2, done), T2 stories (3), T3 UC-04 (2, done), T4 BDD UC-04 (1, done), T5 UC-02 (2, done), T6 UC-01 (2, done), T8 align US-08 (1, done), J6 update use-case diagram (1, done) — 14 | Jo1, G1, J3 |
| **João** | Jo1 story map (3), Jo2 domain model (3), Jo3 bounded contexts (2) — 8 | T2, T6, J4, G4, T8 |
| **José** | J1 use-case diagram (2), J3 BDD UC-01 (1), J4 AI reflection on UC-04 (2, done), J5 final pass (1) — 6 | T3, G3, Jo3, J6 |
| **Gonçalo** | G1 context diagram (1), G3 BDD UC-02 (1), G4 glossary (1), G5 AI reflection (2), G6 conclusion (1) — 6 | T1, J1, T4, T5, Jo2 |

## Everyone

- [ ] Keep an **AI log** while working (prompt, what came out, what you kept or changed and why). This feeds J4 and G5.
- [ ] Do the reviews assigned above. A task is only done after review.
- [ ] Take part in the first meeting (decisions above) and the final read-through.

## Order and dependencies

1. **Start (in parallel):** Jo1 + T2 story map (João lays out the backbone and slices, Tiago writes the stories under it) · Jo2 domain model from the D1 work models · J4 saves the AI UC-04 before anything is edited. (T1 report setup is already done.)
2. **After the release-1 slice is agreed:** confirm the 3 use cases → G1, J1 diagrams · T3, T5, T6 use cases.
3. **After each use case:** its BDD (T4, G3, J3). Jo3/G4 align terms with the use cases.
4. **End:** G5 AI reflection, G6 conclusion, J5 final pass.

## Quality checklist (from the course material)

- Stories: not generic epics; INVEST; role + goal + value; acceptance criteria in Given/When/Then.
- Story map: backbone = chronological user activities; vertical = priority; MVP slice drawn.
- Use cases (Cockburn): one goal per use case; primary actor = role; trigger, preconditions, minimal and success guarantees; 3–9 step main scenario; extensions as `<step><letter>. condition: handling` ending in rejoin or failure; no UI terms (semantic level, not dialog level); level stated.
- Use-case diagram: includes and extends present and correct.
- BDD: real Gherkin (`Feature`, `Scenario`, `Given/When/Then`), one happy path + at least one exception per use case, and consistent with the use case extensions.
- DDD: ubiquitous language = the words in the stories and use cases; at least 2 bounded contexts; glossary.
