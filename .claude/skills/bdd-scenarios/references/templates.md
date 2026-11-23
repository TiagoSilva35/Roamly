# Templates for BDD scenarios

## Gherkin (Portuguese keywords)

```gherkin
# language: pt
@UC-NN
Funcionalidade: <objetivo do caso de uso, como no título do caso de uso>
  Como <papel do ator principal>
  Quero <o que o ator quer conseguir>
  Para <o valor, nas palavras dos utilizadores>

  Contexto:
    Dado <pré-condição partilhada por todos os cenários, como estado>
    E <outra pré-condição>

  @passo-principal @US-NN
  Cenário: <situação do cenário principal de sucesso>
    Dado <estado>
    E <estado>
    Quando <um só acontecimento>
    Então <resultado observável: a garantia de sucesso>
    E <outro resultado observável>

  @ext-Na @US-NN @<breakdown>
  Cenário: <a condição da extensão Na>
    Dado <estado>
    Quando <um só acontecimento>
    Então <resultado observável>
    E <o que continua garantido (garantia mínima), se for relevante>

  @ext-Nb
  Esquema do Cenário: <comportamento que varia com os dados>
    Dado <estado com <parâmetro>>
    Quando <acontecimento>
    Então <resultado com <resultado>>

    Exemplos:
      | parâmetro | resultado |
      | <valor 1> | <valor 1> |
      | <valor 2> | <valor 2> |
```

Portuguese keywords: `Funcionalidade`, `Contexto`, `Cenário`, `Esquema do Cenário`, `Exemplos`, `Dado`/`Dada`/`Dados`/`Dadas`, `Quando`, `Então`, `E`, `Mas`.

## Gherkin (English keywords)

```gherkin
@UC-NN
Feature: <use case goal>
  As a <primary actor role>
  I want <capability>
  So that <value>

  Background:
    Given <shared precondition, as a state>

  @main-scenario @US-NN
  Scenario: <situation>
    Given <state>
    When <one event>
    Then <observable outcome>
    And <another observable outcome>
```

## Traceability table (LaTeX, for the report)

```latex
\begin{table}[H]
\centering\small
\begin{tabularx}{\textwidth}{@{}LLp{2.6cm}p{2.6cm}@{}}
\toprule
\textbf{Cenário} & \textbf{Caso de uso} & \textbf{Histórias} & \textbf{\textit{Breakdowns}} \\
\midrule
<título do cenário> & Cenário principal (passos 1--7) & US-NN, US-NN & -- \\
<título do cenário> & Extensão 3a & US-NN & FM.N \\
\bottomrule
\end{tabularx}
\caption{Rastreabilidade dos cenários BDD do UC-NN.}
\label{tab:bdd-ucNN}
\end{table}
```

## Including the `.feature` file verbatim (LaTeX)

Preamble: `\usepackage{fvextra}` (fancyvrb with line breaking).

```latex
\VerbatimInput[breaklines=true,fontsize=\footnotesize,frame=single,framesep=2mm,
  rulecolor=\color{roamly},numbers=left,numbersep=4pt]{../bdd/UC-NN-<goal-slug>.feature}
```

Keep the `.feature` file as the single source: edit it, and the report follows.
