# Deliverable 2 (Description) 
## Repository layout

```
DOCS/
  1st_submission/            # frozen: what was delivered in Deliverable 1
    relatorio/               # LaTeX report (compiles from here: latexmk -pdf main.tex)
    work_models/             # interviews, flow/cultural/sequence/artifact/physical models, UED, wireframes, backlog
  2nd_submission/
    TODO.md                  # this file
    casos_de_uso/            # UC-04 draft (AI-generated, unrevised; see J4)
    relatorio/               # done (T1): main.tex, seccoes/, anexos/, figuras/
    story_map/               # to create (Jo1/T2): .drawio/.pdf of the map + stories table
    use_cases/diagrams/      # to create: context diagram (L0), use-case diagram (L1)
    ddd/                     # to create (Jo2, Jo3, G4): domain model, context map
```


## Decisions (não encontrei context diagrams e use case diagrams nos conteudos do prof)
- [ ] **Which 3 use cases** get the full Cockburn treatment. Proposal, to confirm once the story map's first release slice exists:
  - **UC-01** Find trips that fit the budget and dates (US-01, focus area 1. Explore ideas)
  - **UC-02** Know the real total per person (US-02/US-03, focus area 3. Trip budget). UC-04 already depends on it.
  - **UC-04** Get the group to decide on the proposal (US-04/US-05, focus area 5). A draft already exists.
- [ ] **Use draw.io for the context diagram: https://miro.com/blog/context-diagram/**
- [ ] ***And for each use case diagram: https://www.geeksforgeeks.org/system-design/use-case-diagram/***

## Task list by report section

| # | Section (brief §) | Task | Owner | Reviewer |
|---|---|---|---|---|
| T1 ✅ | Front page, Intro, §1 Brief | **Done.** Create `2nd_submission/relatorio/` from Report 1's `main.tex` (title "Deliverable 2: Description", version, page numbers off on the cover). Introduction and Brief  and update them with what changed. | Tiago | Gonçalo |
| Jo1 | §2 Story map | **Backbone and slices.** Build the Patton map: user activities and steps (left to right) from the consolidated sequence and UED areas 1→6, covering at least one full journey (idea → budget → compare → decide with group → pay). Draw the MVP / release-1 line and later slices. | João | Tiago |
| T2 | §2 Story map | **Stories.** Write the stories under each step as *As a / I want / so that*, using flow-model roles and the personas, not "user". Check each against INVEST: split epics, no technical tasks. Add Given/When/Then acceptance criteria to the release-1 stories. Make a legible table of all stories (id, step, story, criteria, priority, evidence id). Reuse and rework US-01…US-14 from the backlog. | Tiago | João |
| G1 | §3.1 Context diagram (L0) | Use-case context diagram: Roamly as one box, external actors (traveller/coordinator, companions, family, partner agent, flight/hotel suppliers, payment provider, price source). This is not the CD context diagram (footnote in the brief). | Gonçalo | Tiago |
| J1 | §3.2 Use-case diagram (L1) | All use cases from the release-1 stories, with `<<include>>` / `<<extend>>` (e.g. "Calculate total per person" included by UC-02/UC-04, "Alert price rise" extending UC-04). Name them by goal (actor + verb + object). Mark levels (summary / user goal / subfunction, Cockburn). | José | Gonçalo |
| T3 | §3.3 Use case UC-04 | Revise the UC-04 draft into the final version. Keep the Cockburn fields; at least one exception flow (already has several); traceability to stories from T2. **Do not edit before J4 has saved the AI version.** | Tiago | José |
| G2 | §3.3 Use case UC-02 | Fully worked UC-02 (Cockburn template, same fields and macros as UC-04), at least one alternate/exception flow, every breakdown from area 3 handled or cited. | Gonçalo | Tiago |
| J2 | §3.3 Use case UC-01 | Fully worked UC-01, same template, at least one alternate/exception flow, breakdowns from area 1 handled or cited. | José | João |
| J4 | §3.4 AI use reflection on a UC | Put the AI-generated UC-04 (exactly as in commit `60d2c25`, still unchanged) next to the corrected T3 version. Write the short note: what was wrong, misleading, missing, and why. | José | João |
| T4 | §4 BDD | Gherkin for UC-04: one happy-path scenario + at least one exception scenario (e.g. price rises while the group decides, deadline passes). | Tiago | Gonçalo |
| G3 | §4 BDD | Gherkin for UC-02: happy path + at least one exception. | Gonçalo | José |
| J3 | §4 BDD | Gherkin for UC-01: happy path + at least one exception. | José | Tiago |
| Jo2 | §5 DDD | **Domain model** (class-style diagram) in the ubiquitous language: Trip, Proposal, Option (flight/stay/activity), Budget, Total per person, Group, Member/Coordinator, Vote/Opinion, Availability, Decision, Price alert, Expense share, Payment… Derived from the artifact and sequence models, consistent with the names used in the use cases. | João | Gonçalo |
| Jo3 | §5 DDD | **At least two bounded contexts** and a context map (e.g. *Trip Planning & Pricing* / *Group Decision* / *Group Payments*). Say what each owns, which terms change meaning across them (e.g. "Proposal", "Member"), and the relationships between them. | João | José |
| G4 | §5 DDD | **Glossary.** Short definition of each ubiquitous-language term, linked to its bounded context. | Gonçalo | João |
| G5 | §6 AI reflection | Write the section from everyone's notes (see "Everyone" below): where AI helped, where it got things wrong or missed the point (generic epics in stories, UI words in use cases, invented behaviour…). Concrete examples. | Gonçalo | Everyone |
| G6 | §7 Conclusion | How our understanding of the project changed from D1 to D2; open concerns and questions. | Gonçalo | Everyone |
| J5 | Final pass | Consistency across sections: same actor/term names in stories, use cases, BDD, DDD; traceability story → UC → BDD; annexes (team organisation table, AI-use annex); compile; page numbers; version. | José | Everyone |

## Totals

Sizes used to balance the work: small = 1, medium = 2, large = 3 (story map, stories, domain model). Everyone has 8.

| Person | Tasks | Reviews |
|---|---|---|
| **Tiago** | T1 report setup, intro, brief (2, done), T2 stories (3), T3 UC-04 (2), T4 BDD UC-04 (1) | Jo1, G1, G2, J3 |
| **João** | Jo1 story map (3), Jo2 domain model (3), Jo3 bounded contexts (2) | T2, J2, J4, G4 |
| **José** | J1 use-case diagram (2), J2 UC-01 (2), J3 BDD UC-01 (1), J4 AI reflection on UC-04 (2), J5 final pass (1) | T3, G3, Jo3 |
| **Gonçalo** | G1 context diagram (1), G2 UC-02 (2), G3 BDD UC-02 (1), G4 glossary (1), G5 AI reflection (2), G6 conclusion (1) | T1, J1, T4, Jo2 |

## Everyone

- [ ] Keep an **AI log** while working (prompt, what came out, what you kept or changed and why). This feeds J4 and G5.
- [ ] Do the reviews assigned above. A task is only done after review.
- [ ] Take part in the first meeting (decisions above) and the final read-through.

## Order and dependencies

1. **Start (in parallel):** Jo1 + T2 story map (João lays out the backbone and slices, Tiago writes the stories under it) · Jo2 domain model from the D1 work models · J4 saves the AI UC-04 before anything is edited. (T1 report setup is already done.)
2. **After the release-1 slice is agreed:** confirm the 3 use cases → G1, J1 diagrams · T3, G2, J2 use cases.
3. **After each use case:** its BDD (T4, G3, J3). Jo3/G4 align terms with the use cases.
4. **End:** G5 AI reflection, G6 conclusion, J5 final pass.

## Quality checklist (from the course material)

- Stories: not generic epics; INVEST; role + goal + value; acceptance criteria in Given/When/Then.
- Story map: backbone = chronological user activities; vertical = priority; MVP slice drawn.
- Use cases (Cockburn): one goal per use case; primary actor = role; trigger, preconditions, minimal and success guarantees; 3–9 step main scenario; extensions as `<step><letter>. condition: handling` ending in rejoin or failure; no UI terms (semantic level, not dialog level); level stated.
- Use-case diagram: includes and extends present and correct.
- BDD: real Gherkin (`Feature`, `Scenario`, `Given/When/Then`), one happy path + at least one exception per use case, and consistent with the use case extensions.
- DDD: ubiquitous language = the words in the stories and use cases; at least 2 bounded contexts; glossary.
