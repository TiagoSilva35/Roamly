# Temporary plan · Rewriting the user stories

> **Status (2026-11-19): applied.** Steps 0–8 done as decided. Step 9: `.tex` regenerated and re-review logged in `AI_log/tiago/2026-11-19-apply-rewrite-plan.md`. Still to do by Tiago: send João the message in that log (map changes + review request).

Draft plan based on the review in `AI_log/tiago/2026-11-19-review-user-stories.md`. **Edit freely**: tick, strike or change any step, and fill in the "Decision" fields. Nothing is applied until you say so. Delete this file when done.

Files touched: `story_map/historias_roamly.md` and `story_map/historias_roamly.tex` (kept in sync). The story map picture (`story_map.png`) is João's; changes to card titles/IDs are listed in step 9 for him.

---

## Step 0 · Decisions first

- [x] **Role name.** Proposal: "organizador(a) do grupo" everywhere; Inês only in examples. Decision: ok
- [x] **IDs for split stories.** Proposal: suffixes (US-02a / US-02b) so no other ID changes. Alternative: new numbers at the end (US-28…). Decision: New numbers at the end, never use a/b/c or similar
- [x] **Old backlog references.** (From your note: remove tracebacks.) Proposal: remove mentions of `roamly-backlog.csv` and the old US numbers from `TODO.md` and from the `user-stories` skill; leave the Deliverable 1 files untouched since they were submitted. Decision: ignore old backlog references and add a note in the 2nd submission report noting that

## Step 1 · Remove traces of the old backlog

- [x] `TODO.md`: drop the backlog from "Inputs to reuse" and renumber the use-case proposal to the new IDs (see step 8).
- [x] `.claude/skills/user-stories/SKILL.md` and `.claude/skills/story-map/SKILL.md`: remove the `roamly-backlog.csv` pointer.

## Step 2 · Acceptance criteria to Given/When/Then (all 27)

- [x] Rewrite every criterion as *Dado … quando … então …*.
- [x] Each story: one success scenario + one failure/edge scenario. Add the missing failure case to US-09, US-14, US-18, US-20, US-21, US-24, US-25.
- [x] Use real values from the data where they exist (300 €, +34 €, 19 €, 28 €, 98 €).

## Step 3 · Remove UI words

| Story | Replace | With (proposal) |
|---|---|---|
| US-04 | "aparece no Caderno" | "fica guardada com as outras opções" |
| US-05 | «Ver no site» | "chego à página original da oferta" |
| US-06 | «Preço final» | "o preço por pessoa já inclui os extras" |
| US-10 | "riscado" | "continua visível como cortado" |
| US-16 | «Concordo» / «Prefiro outra» | "dizer se aceito cada item" |
| US-23 | "no Caderno" / "caderno" | "na comparação" / "caderno de papel" |
| US-24, US-25 | "quadro" | "por cliente" |
| US-26 | "a partir da janela Pesquisa" | (remove) |

- [x] Agree with the table.

## Step 4 · Splits

- [x] **US-02** → US-02a *Definir o limite por pessoa* · US-02b *Definir a janela de datas*.
- [x] **US-07** → US-07a *Avisar de voo sem transporte até ao aeroporto* · US-07b *Contar o transporte até ao aeroporto no total*. Both marked "spike: fonte de horários e preços de transportes".
- [x] **US-19** → US-19a *Enviar a proposta no modelo da agência* · US-19b *Preencher a proposta a partir das ofertas guardadas*.
- [x] **New story from US-15:** *Ver quem já respondeu* (organizador(a)); US-15 keeps only the group member's part.
- [x] US-05 criterion (2) "open the original site": keep as criterion / make own story / drop? Decision: keep as criterion

**Important:** I agree with splitting but do not use a/b or similar. Assign an actual new number 

## Step 5 · Story text rewrites

- [x] US-01: one capability ("guardar uma ideia com a origem"), no "colar … ou escrever".
- [x] US-10: take the design out of the sentence.
- [x] US-12: "marcar como confirmada ou descartada depois de verificar" (drop "ver no mapa").
- [x] US-16: new wording + criterion (2) "o(a) organizador(a) vê onde há divergência" (removes the "só reserva" rule).
- [x] US-23: clarify "caderno de papel".
- [x] US-24: "ver num só sítio, por cliente, os pedidos e propostas pendentes".

## Step 6 · Evidence and risks

- [x] US-04, US-05: replace FM.7, SM.15, PM.28 (agent breakdowns) with UE05/UE06, SM.14.
- [x] US-19b: keep FM.7, SM.15 (they are agent breakdowns and fit here); drop FM.6.
- [x] US-13: mark **hipótese (por confirmar com mais agentes)**.
- [x] US-27: add "Risco/spike: fonte de tempos de deslocação e horários".
- [x] US-09: add "Depende de: US-08".

## Step 7 · Contradictions and overlaps

- [x] US-16 vs US-08: resolved by step 5.
- [x] US-17 criterion (2): replace the repeated price alert with "prazo passou e falta alguém".
- [x] US-08 criterion (2): turn "não congela preços nem faz reservas" into a scope note, not a criterion.

## Step 8 · Use-case alignment (TODO.md)

Proposal for the three fully worked use cases, with the new IDs:

- [x] **UC-01** Define the trip's limits ← US-02a, US-02b
- [x] **UC-02** Know the real total per person ← US-06, US-09, US-10
- [x] **UC-04** Get the group to decide on the proposal ← US-14, US-15, *Ver quem já respondeu*, US-16, US-18 (US-17 in R2 as extension)

Decision / changes: Following the aforementioned instructions do not use a/b/... or similar.

## Step 9 · After the rewrite

- [x] Regenerate `historias_roamly.tex` from the Markdown so both match.
- [x] Send João the list of changed IDs/titles for the map picture (splits in step 4, new story from US-15).
- [x] Re-run the `user-stories` review on the result and log it in `AI_log/tiago/`.
- [x] Ask João to review (he is the reviewer of T2 in `TODO.md`).

---

## Other notes:  
- Whenever there's a reference to "só reserva" we should make sure its clear that Roamly does not make reservations and that "só reserva" means that the user will pick the agreed on proposal and leave roamly so that it can actually make the proper reservations
