# AI log · Review and correction of UC-01, UC-02 and UC-04 (2026-11-23)

**Tool:** Claude Code, with the project skill `contextual-use-cases` (review mode), then my own review of the corrected versions.

**Inputs:** the first versions of the three use cases, all AI-generated and kept unchanged in `casos_de_uso/` (UC-04's very first English version is in commit `60d2c25`); the Deliverable 1 UED, consolidated sequence and breakdown table; the user stories (`story_map/historias_roamly.md`); the use-case diagram.

**Output:** corrected versions in `casos_de_uso/corrigidos/` (`.tex` + `.pdf`), now in the report (§3.3). The change list below is in the report (§3.4).

## Prompts

> dá review aos 3 use cases com base nas skills adequadas. Sê sucinto e objetivo nas respostas

> guarda estes Use Cases e duplica colocando a versao corrigida numa pasta separada

Then my own comments on the corrected versions (asked the AI to assess them critically and propose a plan before changing anything):

> UC-01: group members and family as secondary actors? Is "criou a viagem no Roamly" too early as a precondition?
> UC-02: really no secondary actors? "ter uma opção guardada" is vague. Add a margin for extras based on what other platforms usually charge?
> UC-04: since someone may find they cannot go on certain dates, and that changes the proposal, would another format of main scenario fit better?

## What had to change (not right in the AI-generated first versions)

"Found by": **AI review** = the `contextual-use-cases` skill in review mode; **me** = my own review of the AI-corrected versions.

| UC | Problem in the AI-generated version | Type | Change and why | Found by |
|---|---|---|---|---|
| UC-01 | Main scenario step 5 and extensions 5a/5b described what happens later, in other use cases (adding an offer; UC-02). 5b repeated UC-02's 4b. | wrong | Scenario ends at step 4; 5a/5b removed, with a note saying where they belong. One goal per use case. | AI review |
| UC-01 | Review note (2) said the scenario "forces" setting the limit and dates first, but extension 1a lets the organiser go on without a limit; it also claimed SM.11/AM.26 («o que não abdicam») were solved, and the scenario never mentions them. | misleading | Note rewritten: SM.11/AM.26 are the agent's, covered by US-03 [A] (Release 3). | AI review |
| UC-01 | The UED function is «Indicar o orçamento por pessoa, as datas possíveis e o que não se dispensa»; the last part was dropped without saying why. | missing | Note added: only the agent shows this data (A0-06) and no Release 1 story asks for it. | AI review |
| UC-01 | Precondition «O organizador criou a viagem no Roamly» refers to an action no use case or story covers. | wrong | Precondition is now «Existe uma ideia de viagem guardada (US-01)», the real step before, as in the trigger (UE02). | me |
| UC-01 | No justification for having no secondary actors. | missing | Note added: members give their conditions in the group chat, outside Roamly, and the family does not use Roamly; they are stakeholders, not actors. | me (question) |
| UC-02 | "No secondary actors", defended by note (1), although extension *a needs the system to read the offer again on the supplier's site to know the price changed. | wrong | Secondary actor added: supplier sites (external system). Note (1) rewritten. New extension *c for when the site can no longer be read (US-08, criterion 2). The use-case diagram must link UC-02 to the sites. | me |
| UC-02 | Precondition said «opção escolhida», but step 1 is the organiser choosing the options; «opção guardada» was still vague. | wrong / vague | «pelo menos um voo ou um alojamento guardado a partir da ligação da oferta, com o preço por pessoa lido da página ou preenchido à mão (US-04, US-05)». | AI review + me |
| UC-02 | Cutting an item was extension 4c, but it can happen at any step, not only when the total is over the limit. | wrong | Now *b, matching the extension point in the diagram. | AI review |
| UC-02 | Trigger mixed the trigger with a description of today's process (long). | style | One sentence. | AI review |
| UC-04 | Level «objetivo do utilizador», defended by a note, although the decision takes days and several sessions by different people (UE08). | wrong | Level is now «resumo»; note rewritten. The use-case diagram must change too. | AI review |
| UC-04 | Price-rise alert (*b) went only to the organiser; the UED function is «Avisar o grupo quando o preço sobe», with the restriction «Não usar mensagens de urgência». | inconsistent | Alert goes to organiser and members, without urgency messages. US-08 must be aligned. | AI review |
| UC-04 | Extension 4a said the organiser changes the item "in UC-02"; changing an option is UED area 2, «Comparar opções». | wrong reference | Points to area 2. | AI review |
| UC-04 | Main scenario as a plain list, with three participants and members answering each at their own time. | readability | Main scenario in three columns (Organizador \| Membros \| Sistema); same steps. The date change that alters the proposal stays in extension 3a. | me |
| All | Primary actor «Organizador(a) do grupo» is not a role of the consolidated flow model. | missing | Kept for consistency with the stories and the diagram; a note in each UC names the flow role (Planeador da viagem / Coordenador do grupo). | AI review |

## Suggestions considered and not adopted

- **UC-01: members and family as secondary actors.** Not adopted: a secondary actor is one the system calls during the use case; here neither uses Roamly. Justified in a note instead.
- **UC-02: a margin for extras estimated from other platforms.** Not adopted for now: the data only show extras appearing at payment (UE07); a wrong estimate repeats the trust breakdown («parece certo e não é», UE10, A0); US-06 already decides «extras por confirmar» instead of hiding them; it depends on access to platform data (Deliverable 1, Section 2.6). If the team wants it, write a Release 2 story first, with the estimate always labelled as such.

## What I learned

- The AI followed the template well: all Cockburn fields, real values from the interviews, traceability to stories, UED and breakdowns.
- Its errors were of structure and consistency, not of form: steps that belong to other use cases, wrong level, contradictions with the UED, and review notes that defended the errors (UC-02 «no secondary actors», UC-04 «user goal»).
- The AI review caught most structural problems, but not the missing secondary actor or the vague precondition; those needed my own reading.
