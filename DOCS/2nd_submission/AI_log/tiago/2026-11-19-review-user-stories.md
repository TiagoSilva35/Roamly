# AI log · Review of João's user stories (2026-11-19)

**Tool:** Claude Code, with the project skill `user-stories` (review mode).

## Prompt

> review João's stories with the user-stories skill

## Tasks defined

1. Load the `user-stories` skill and read the 27 stories in `story_map/historias_roamly.md`.
2. Check that every cited evidence ID (breakdowns FM/SM/AM/PM/CM, records UE/AE/U0-/A0-) exists in the Deliverable 1 report and supports the story it is attached to.
3. Review each story against the skill's checklist: template and the Three Cs, INVEST, atomic, grounding, acceptance criteria.
4. Check the set as a whole (duplicates, IDs, dependencies), then report verdicts. The stories file was not changed.

## Output

### Findings across the set

1. **Acceptance criteria are not in Given/When/Then.** All 27 use a (1)/(2) list. Several have no failure or edge case (US-09, US-14, US-18, US-20, US-21, US-24, US-25). Fix for all: rewrite as *Dado / quando / então*, one success + one failure scenario.
2. **UI words in stories and criteria.** "Caderno" (US-04, US-23), "janela Pesquisa" (US-26), "quadro" (US-24, US-25), labels «Preço final», «Ver no site», «Concordo», «Prefiro outra», "riscado" (US-10). These fix the design too early (INVEST: Negotiable).
3. **No priority field.** Stories have a size and a release, but no priority inside the release. The skill (and the story map) need it to order cards under each step.
4. **Evidence exists, but some is attached to the wrong actor.** All 61 cited IDs exist in Table 14 / the field notes. However FM.7, SM.15, PM.28 describe the *agent* copying data from the portal, and are used to justify the *organiser's* US-04 and US-05. US-13 rests on CM.35 and one interview (the report itself calls it a hypothesis). US-19 cites FM.6 (service fee), which is not about the proposal template.
5. **ID clash with the old backlog.** `1st_submission/work_models/guidelines/roamly-backlog.csv` uses US-01…US-14 with other meanings (old US-01 = search by budget and dates; old US-04 = share proposals to vote). `TODO.md` proposes the 3 use cases using the **old** numbers. Either renumber the TODO proposal or state that the old backlog is retired.
6. **Contradiction and overlap.** US-16 criterion (2) says the organiser "só reserva quando todos concordam", but US-08 says "o Roamly não congela preços nem faz reservas". US-17 criterion (2) repeats US-08's price alert.
7. **Role names.** Mostly "organizadora" (persona Inês), but US-15 says "o organizador". Use one role name ("organizador(a) do grupo") and keep the persona for examples.
8. Dependencies all point at stories that exist; no duplicate IDs; numbering US-01…US-27 is complete.

### Per-story review

Only problems are listed. Every story also needs finding 1 (Given/When/Then); it is not repeated below.

| ID | Verdict | Problem | Proposed rewrite |
|---|---|---|---|
| US-01 | Rewrite | "colar a ligação de um vídeo **ou** escrever uma ideia": two ways of doing it joined by "ou", and "colar a ligação" is the how. | **Guardar uma ideia com a origem.** Como organizador(a) do grupo, quero guardar uma ideia de viagem junto com o sítio de onde veio (vídeo, publicação ou texto meu), para não a perder entre abas e capturas de ecrã. |
| US-02 | Split | Two capabilities: limit per person **e** date window. Criterion (2) "visível em todas as janelas" is UI. | **US-02a Definir o limite por pessoa.** Como organizador(a), quero indicar quanto cada pessoa pode gastar (ex.: 300 €), para que tudo o que eu juntar seja comparado com esse limite. · **US-02b Definir a janela de datas.** Como organizador(a), quero indicar as datas possíveis (ex.: um mês inteiro), para procurar só opções em que o grupo pode ir. |
| US-04 | Rewrite | Criterion (1) "aparece no Caderno" is UI. Evidence FM.7, SM.15, PM.28 is the agent's breakdown, not the organiser's; UE06 and SM.14 fit. | Keep the story. Criteria: *Dado que tenho a ligação de uma oferta de voo, quando a guardo, então vejo preço por pessoa, horários e condições sem os escrever.* · *Dado que a página não pode ser lida, quando guardo a ligação, então sou avisado(a) e posso preencher os dados à mão.* Origem: UE06, SM.14. |
| US-05 | Rewrite | «Ver no site» is a UI label, and criterion (2) adds a capability (open the original site): separate story or drop. Same agent-evidence problem as US-04. | Criterion (2) → *Dado que guardei um alojamento, quando quero confirmar a informação, então chego à página original da oferta.* (or move to its own story). Origem: UE05, UE06. |
| US-06 | Rewrite | «Preço final» is a label. Otherwise strong (FM.1, SM.16, CM.31, real value +34 €). | *Dado um voo com bagagem de porão a 34 €, quando o guardo, então o preço por pessoa já inclui a bagagem.* · *Dado que o site não mostra os extras, então a oferta indica que os extras estão por confirmar.* |
| US-07 | Split | Two capabilities: warn about no transport **e** add transport cost to the total. Needs timetable data nobody knows how to get (not Estimable: spike first). | **US-07a Avisar de voo sem transporte até ao aeroporto** (warning only). · **US-07b Contar o transporte até ao aeroporto no total** (cost only). Mark both "spike: fonte de horários e preços de transportes". |
| US-08 | OK | Criterion (2) is a scope note ("não congela preços"), not an outcome; keep it as a note. | — |
| US-09 | OK | Criterion (1) "atualiza-se sozinho quando um preço muda" depends on US-08 re-reading prices; state the dependency. | Add "Depende de: US-08". |
| US-10 | Rewrite | The card crams the design into the sentence ("ficando o item riscado e à vista"). "riscado" is UI. | **Cortar um item e ver o efeito.** Como organizador(a), quero cortar um item e ver logo o novo total, sem perder de vista o que cortei, para mostrar ao grupo o que saiu e porquê (ex.: mina de sal, 28 €). |
| US-11 | OK | Criterion (1) (show what is left before asking) is close to a separate capability; acceptable as a precondition. | Write it as *Dado que sobram 40 € por pessoa…* |
| US-12 | Rewrite | Two capabilities joined by "e" (see on the map **e** mark it). The map is the how; the goal is to know what is true. | **Confirmar ou descartar uma sugestão.** Como organizador(a), quero marcar cada sugestão como confirmada ou descartada depois de a verificar, para só contar com o que é verdade. |
| US-13 | Rewrite | Weak evidence: CM.35 is the supervisor expecting ChatGPT to help with reports, and the report says this rests on one interview. | Keep the story, mark it **hipótese (por confirmar com mais agentes)**. Origem: A0-09, A0-14, CM.35. |
| US-14 | OK | No failure case. | Add: *Dado que um amigo não abre a ligação, então pode ver a proposta num resumo enviado na conversa do grupo* (UC-04, 2a). |
| US-15 | Rewrite | Criterion (2) is the organiser's view (another actor, another story). "o organizador" vs "organizadora" elsewhere. | Move criterion (2) to a new story **Ver quem já respondeu** (organizador(a)). Keep (1) for the group member. |
| US-16 | Rewrite | «Concordo» / «Prefiro outra» are labels. Criterion (2) adds a rule (only book when everyone agrees) that contradicts US-08 (Roamly doesn't book). | Story: Como membro do grupo, quero dizer se aceito cada item da proposta, para dizer o que não aceito antes de se reservar (ex.: «dormitório não»). Criterion (2): *então o(a) organizador(a) vê em que itens há divergência.* |
| US-17 | OK | Criterion (2) repeats US-08's alert. | Replace (2) with a failure case: *Dado que o prazo passou e falta alguém, então o(a) organizador(a) é avisado(a).* |
| US-18 | OK | No failure case. | — |
| US-19 | Split | Two capabilities: agency template with logo **e** data filled from saved offers. FM.6 (service fee) doesn't support it. | **US-19a Enviar a proposta no modelo da agência** (AE05, A0 interview: "documento com logótipo"). · **US-19b Preencher a proposta a partir das ofertas guardadas** (FM.7, SM.15, AM.23). |
| US-20 | OK | No failure case (e.g. someone pulls out). | — |
| US-21 | OK | — | — |
| US-22 | OK | — | — |
| US-23 | Rewrite | "e não só no caderno" is ambiguous: the agent's paper notebook (AE08) or the app's "Caderno" window? Criterion (2) "no Caderno" is UI. | …para os ter à mão ao montar propostas, em vez de só no caderno de papel. Criterion (2): *então os fornecedores guardados entram na comparação como as outras opções.* |
| US-24 | Rewrite | "abrir ou criar um quadro … **e** ver o que está pendente": "quadro" is UI, and two capabilities. | **Ver o que está pendente por cliente.** Como agente de viagens, quero ver num só sítio, para cada cliente, os pedidos novos e as propostas por enviar, para trabalhar sem saltar entre aplicações. |
| US-25 | OK | "quadro" is UI. | "…deixar um lembrete associado ao cliente…" |
| US-26 | Rewrite | Criterion (1) "a partir da janela Pesquisa" is UI. | *Dado que guardei uma ideia, quando a partilho com os amigos, então eles veem a ideia, a origem e o limite por pessoa.* |
| US-27 | Rewrite | M, but how the system knows a day is not viable (travel times, opening hours) is unknown: not Estimable yet. | Add "Risco/spike: fonte de tempos de deslocação e horários". |
| US-03 | OK | — | — |

### Summary

- **OK:** 11 · **Rewrite:** 13 · **Split:** 3 (US-02, US-07, US-19).
- Main work: criteria to Given/When/Then for all; remove UI words; fix evidence on US-04/05/13/19; align the TODO's use-case proposal with the new IDs.
- Use-case candidates under the new numbering: US-09 (total per person, → UC-02), US-14/15/16/18 (decide with the group, → UC-04), and US-02a/b (budget and dates, → UC-01).

## My notes

- The first interesting take is that the user stories themselves were AI generated (fact ommited in the prompt so that the review was unbiased) and the review agent flagged a lot of mistakes which is therefore an acknowledgment that it missed so crucial points.
- The ID clash with the old backlog is out of the AI's control because it had no way of knowing which was the old backlog's enumeration nor we find that important. Hence, we remove possible tracebacks to that on the repository.
- Among other really small things such as wording and such the agent was very confused with the reservation wording. In the implementation plan we manually added enough information so that it becomes clear the reservations are done outside of roamly with all the convinient links given



