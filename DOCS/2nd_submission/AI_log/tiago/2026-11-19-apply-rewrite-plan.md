# AI log · Applying the story rewrite plan (2026-11-19)

**Tool:** Claude Code, with the project skill `user-stories`.

## Prompt

> apply the plan.

(The plan is `story_map/rewrite-plan.md`, drafted by the AI from the review in `2026-11-19-review-user-stories.md` and then edited by me: decisions filled in, steps ticked, extra note on "reservar".)

## Tasks defined

1. Read the edited plan and my decisions.
2. Apply the ticked steps to `story_map/historias_roamly.md`.
3. Update `TODO.md` and the skills (remove old-backlog pointers, renumber the use-case proposal).
4. Regenerate `story_map/historias_roamly.tex` from the Markdown and test-compile it.
5. Re-run the review checks, log, and prepare the message to João.

## Decisions followed (from my edits to the plan)

- Role name: "organizador(a) do grupo" everywhere.
- Split stories: **no a/b suffixes**. The original number stays on one part; the other part gets a new number at the end (US-28 onward).
- No priority column (I removed that decision from the plan).
- Old backlog: not referenced any more; a note in the report says the D2 IDs replace it.
- "Reservar": always made clear that Roamly doesn't book; the organiser leaves Roamly to book on each supplier's site.
- US-05: keep "open the original page" as a criterion.

## Output

**`historias_roamly.md`** (27 → 31 stories):

- New stories: **US-28** Definir a janela de datas (from US-02) · **US-29** Contar o transporte até ao aeroporto no total (from US-07) · **US-30** [A] Preencher a proposta a partir das ofertas guardadas (from US-19) · **US-31** Ver quem já respondeu (from US-15).
- All acceptance criteria in *Dado / quando / então*, each story with a success and a failure/edge scenario, real values (300 €, +34 €, 19 €, 322 → 294 €, 28 €, 98 €).
- UI words removed (Caderno, janela Pesquisa, quadro, riscado, labels).
- Rewritten: US-01, US-10, US-12, US-16, US-23, US-24, US-25 (title "por cliente").
- Evidence: US-04/US-05 now UE05/UE06, SM.14; US-19 drops FM.6; US-13 marked hypothesis; spikes on US-07, US-29, US-27; US-09 depends on US-02, US-08.
- Contradictions: US-16 no longer has the "só reserva" rule; US-17 (2) is now "prazo passou e falta alguém"; US-08 and US-21 have scope notes instead of criteria.
- Intro note at the top: Given/When/Then format, "Roamly não faz reservas", and the old-backlog note.

**`historias_roamly.tex`**: regenerated from the `.md` (31 rows, intro note included as the report note), compiles.

**`TODO.md`**: backlog removed from the layout; use-case proposal renumbered: UC-01 ← US-02, US-28 · UC-02 ← US-06, US-09, US-10 · UC-04 ← US-14, US-15, US-31, US-16, US-18 (US-17 as extension).

**`user-stories` skill**: old-backlog pointer removed. (The `story-map` skill never had one.)

### Re-review (automatic checks + reading)

- Passed: Given/When/Then in all 31; no UI words left ("janela de datas" and "caderno de papel" are intended); every "reservar" clarified; IDs unique; all dependencies exist.
- Still worth discussing:
  - US-14 criterion (3) (send a readable summary to the group chat) and US-20 criterion (2) (remove someone who drops out) are close to separate capabilities. Could become their own stories.
  - US-31 has the same evidence as US-15 (FM.8, UE02, UE09); fine, but it is a derived story, not one observed directly.
  - US-13 stays a hypothesis based on one agent interview.

## Follow-up · US-11 and US-12 to Release 1

**Prompt:**

> Não achas que a US-07 e principalmente a US-11 deveriam estar na release 1? são bandeiras da aplicação

**AI answer (summary):** agreed for US-11. Release 1 must cover the whole journey, and the *Roteiro* activity had no Release 1 story; US-11 is also the feature that shows Roamly as an AI agent. It should move together with US-12, because the data says users don't trust AI suggestions and check each one on the map (SM.18, AM.27, UE10). Disagreed for US-07: it has an open spike (no known source for transport timetables), so it isn't estimable and would put the MVP at risk; same for US-29. It could move later if the spike is solved, or as a smaller story where the organiser enters the transport cost by hand.

**Decision (Tiago):** move US-11 and US-12; keep US-07 in Release 2.

**Output:** US-11 and US-12 moved to Release 1 (after US-10, before the group decision) in `historias_roamly.md`; `historias_roamly.tex` regenerated and compiles. Release 1 now has 18 stories, Release 2 has 5.

**Message for João (map picture):**

> João, mais uma alteração ao mapa: a US-11 *Pedir um roteiro que caiba no orçamento* e a US-12 *Confirmar ou descartar uma sugestão* passam para a Release 1, na atividade Roteiro (assim a R1 cobre a jornada toda). A US-07 continua na R2.

**My notes:**



