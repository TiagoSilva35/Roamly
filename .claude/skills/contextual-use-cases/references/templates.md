# Use case templates

Use the template that matches the project's format and language, and keep the same fields across all use cases.

## Markdown

```markdown
### UC-NN: <goal>

**Brief description.** <2–3 sentences: who, what they want, the outcome, what the system does for them.>

| Field | |
|---|---|
| Primary actor | <role> |
| Secondary actors | <roles or systems> |
| Level | User goal |
| Scope | <system under design> |
| Focus area(s) | <n. name> |
| Trigger | <event, and what replaces it in the system if needed> |
| Preconditions | <what must be true before> |
| Minimal guarantee | <what holds even if the goal fails> |
| Success guarantee | <what holds when the goal succeeds> |

**Stakeholders and interests**
- <Stakeholder>: <interest>

**Main success scenario**
1. <Actor> <does something toward the goal>.
2. The system <responds>.

**Extensions**
- 2a. <Condition>: <handling>. Rejoins at step 3. *(<breakdown ID>)*
- *a. At any time, <condition>: <handling>.

**Traceability**: sequence <activity> · UED <area: functions> · affinity <groups> · breakdowns <IDs> · persona <name>
```

Portuguese labels: Descrição breve · Ator principal · Atores secundários · Nível (Objetivo do utilizador / Resumo / Subfunção) · Âmbito · Área(s) de foco · Gatilho · Pré-condições · Garantia mínima · Garantia de sucesso · *Stakeholders* e interesses · Cenário principal de sucesso · Extensões · Rastreabilidade.

## LaTeX

Needs `tabularx`, `booktabs` and `enumitem`. Define once:

```latex
\newenvironment{casouso}[2]{%
  \par\medskip\noindent\textbf{#1: #2}\par\smallskip
  \small\noindent\ignorespaces
}{\par\medskip}
\newcommand{\cuCampo}[2]{\textbf{#1} & #2 \\}
```

Each use case:

```latex
\begin{casouso}{UC-NN}{<objetivo>}
\textbf{Descrição breve.} …\par\smallskip
\begin{tabularx}{\textwidth}{@{}p{3.4cm}X@{}}
\toprule
\cuCampo{Ator principal}{…}
\cuCampo{Atores secundários}{…}
\cuCampo{Nível}{Objetivo do utilizador}
\cuCampo{Âmbito}{…}
\cuCampo{Área de foco}{…}
\cuCampo{Gatilho}{…}
\cuCampo{Pré-condições}{…}
\cuCampo{Garantia mínima}{…}
\cuCampo{Garantia de sucesso}{…}
\bottomrule
\end{tabularx}

\textbf{\textit{Stakeholders} e interesses}
\begin{itemize}
  \item …
\end{itemize}

\textbf{Cenário principal de sucesso}
\begin{enumerate}
  \item …
\end{enumerate}

\textbf{Extensões}
\begin{itemize}[leftmargin=2.2em]
  \item[2a.] …
\end{itemize}

\textbf{Rastreabilidade:} …
\end{casouso}
```

If the project has a macro for record references (e.g. `\reg{UE07}`), use it.

## Worked example (Roamly, Portuguese)

### UC-02: Montar o orçamento real por pessoa

**Descrição breve.** O organizador junta opções de voo e alojamento a uma viagem e fica a saber quanto custa por pessoa, com extras e a deslocação até ao aeroporto incluídos. O sistema soma e atualiza o total sozinho e avisa quando a viagem deixa de caber no orçamento.

| Campo | |
|---|---|
| Ator principal | Planeador da viagem |
| Nível | Objetivo do utilizador |
| Âmbito | Aplicação Roamly |
| Áreas de foco | 2. Comparar opções; 3. Orçamento da viagem |
| Gatilho | O planeador escolhe uma opção de voo ou alojamento para a viagem. |
| Pré-condições | A viagem tem orçamento por pessoa, datas possíveis e número de participantes. |
| Garantia mínima | As opções já juntas e o orçamento não se perdem; nenhum extra conhecido é omitido do total sem aviso. |
| Garantia de sucesso | O orçamento mostra o custo total por pessoa, com extras e transporte até ao aeroporto, e indica se cabe no limite. |

**Stakeholders e interesses**
- Planeador: ver o custo real antes de decidir; não refazer contas à mão.
- Companheiros de viagem: perceber o total sem abrir uma folha de cálculo.
- Família: que o gasto não passe o limite combinado.

**Cenário principal de sucesso**
1. O planeador junta uma opção de voo ao orçamento.
2. O sistema mostra o preço final da opção, já com extras como a bagagem.
3. O sistema inclui o custo do transporte até ao aeroporto à hora do voo.
4. O planeador junta uma opção de alojamento ao orçamento.
5. O sistema soma o total por pessoa e compara-o com o orçamento por pessoa.
6. O planeador corta um item e vê o efeito no total.
7. O sistema guarda o item cortado e o motivo, para o mostrar ao grupo.

**Extensões**
- 2a. O fornecedor não indica o preço dos extras: o sistema marca o preço como incompleto e mostra-o assim no total. *(UE07)*
- 3a. Não há transporte até ao aeroporto à hora do voo: o sistema avisa antes de a opção ser junta; o planeador escolhe outro voo (volta ao passo 1) ou mantém a opção. *(UE04)*
- 5a. O total passa o orçamento por pessoa: o sistema avisa e destaca os itens que mais pesam; o planeador corta um item (passo 6) ou ajusta o orçamento.
- \*a. O preço de uma opção já junta muda: o sistema atualiza o total e avisa o planeador. *(UE08, UE09)*

**Rastreabilidade**: sequência consolidada, atividade 5 «Juntar tudo numa proposta» · UED área 2 «Mostrar o preço final, já com extras» (2), «Avisar quando não há transporte até ao aeroporto» (3a), «Juntar a opção ao orçamento» (1, 4); área 3 «Incluir o transporte até ao aeroporto» (3), «Somar o total por pessoa» (5), «Avisar quando o total passa o orçamento» (5a), «Cortar um item e ver o efeito no total» (6), «Atualizar o total quando um preço muda» (*a) · afinidade «Os extras só aparecem quando vou pagar», «O custo de chegar ao aeroporto fica fora das minhas contas», «Faço e refaço as contas eu mesmo/a» · *breakdowns* UE04, UE06, UE07, UE08 · persona Inês.
