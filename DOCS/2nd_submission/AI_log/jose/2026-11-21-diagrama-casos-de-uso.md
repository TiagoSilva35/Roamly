# Registo de IA · Diagrama de casos de uso (nível 1) (2026-11-21)

**Ferramenta:** Claude Code (sem skill do projeto).
**Tarefa:** J1, §3.2, diagrama de casos de uso (nível 1) da Release 1.

## Prompt (consolidado)

O pedido foi feito em várias mensagens; este é o resumo, num só prompt.

> Faz o diagrama de casos de uso (nível 1) da Release 1 do Roamly, a partir das histórias em `story_map/historias_roamly.md` e da tarefa J1 do `TODO.md`. Segue o material da cadeira em anexo (Cockburn, *Structuring Use Cases with Goals*; Gilson et al., *Generating Use Case Scenarios from User Stories*; slides de casos de uso) e a notação UML de https://www.geeksforgeeks.org/system-design/use-case-diagram/. O diagrama deve estar em português, com «include» e «extend» (com pontos de extensão) e o nível de cada caso de uso; só as subfunções dadas como exemplo no TODO. A IA faz parte do Roamly e não é ator; os sites dos fornecedores são um sistema externo e isso deve ficar claro. Disposição pedida pelo professor: vertical, casos de uso ao centro, sem caso de uso de resumo, o organizador ligado diretamente aos objetivos do utilizador, o ator principal à esquerda e os secundários e o sistema à direita, com uma legenda que explique cada elemento. Entrega o `.drawio` e o `.pdf`.

## Tarefas que a IA definiu

1. Ler as 18 histórias da Release 1 (`story_map/historias_roamly.md`) e o modelo de fluxo consolidado da Entrega 1.
2. Escolher os atores: organizador(a) do grupo (principal), membro do grupo e sites dos fornecedores (secundários).
3. Juntar as histórias em casos de uso pelo objetivo (por exemplo, US-04 e US-05 em «Adicionar uma oferta por ligação») e confirmar que as 18 histórias ficam cobertas.
4. Encontrar os «include» (comportamento usado sempre, como «Calcular o total por pessoa») e os «extend» (comportamento opcional, como «Alertar subida de preço»).
5. Marcar o nível de cada caso de uso (Cockburn).
6. Gerar o `.drawio`, o `.png` e o `.pdf`.

## Resultado

Ficheiros `use-case-diagram.drawio`, `.png`, `.svg` e `.pdf`. Houve várias versões:

1. **Primeira versão:** em inglês, com 5 subfunções (3 acrescentadas pela IA) e um caso de uso de resumo.
2. **Em português**, com as minhas decisões: só as subfunções do TODO, «Cortar um item» como objetivo do utilizador, o resumo no diagrama e a IA como ator secundário.
3. **Com base nos PDFs da cadeira:** disposição em «navio» de Cockburn (resumo em cima, objetivos do utilizador ao nível do mar, subfunções em baixo) e pontos de extensão no UC-02 e no UC-04, como no slide de UML.
4. **Clareza:** a IA deixou de ser ator; os sites dos fornecedores passaram a retângulo «sistema», com setas a partir dos casos de uso; o papel de cada ator escrito junto dele; a legenda reescrita.
5. **Depois da revisão do professor:** diagrama vertical, casos de uso ao centro, sem o resumo, o organizador ligado diretamente aos 7 objetivos, o ator principal à esquerda e os secundários e o sistema à direita. Sem linhas cruzadas.

### Problemas encontrados no que a IA fez

- Apresentou decisões de desenho próprias (posição do resumo, cores, «include» do resumo para os objetivos) como se fossem teoria. Só o admitiu quando perguntei de onde vinha a informação.
- Citou o «teste da pausa para café», que não está no material da cadeira. O artigo de Cockburn usa *«Does your job performance depend on how many of these you do today?»* (p. 10).
- Acrescentou subfunções que o TODO não pedia.
- A primeira versão não tinha pontos de extensão.
- Depois de lhe pedir português, deixou «extension points» em inglês.
- Problemas visuais: linhas a cruzar elipses, a linha separadora a cortar o texto dos pontos de extensão e, no PDF, linhas «dentadas» (por causa do conversor usado).
- A legenda dizia «o Roamly inicia» sem dizer o quê.

## O que fiz com o resultado

Não aceitei a primeira versão. Pedi para o diagrama ficar em português e escolhi as decisões de desenho: só as subfunções que o TODO dá como exemplo, «Cortar um item» como objetivo do utilizador e o resumo no diagrama. Quando perguntei de onde vinha a teoria, percebi que parte da disposição eram decisões da IA, e dei-lhe os PDFs da cadeira para a refazer. Corrigi também o modelo: a IA faz parte do Roamly e não é ator, e os sites dos fornecedores são um sistema externo, o que tinha de ficar claro no diagrama e na legenda. Verifiquei o PDF e pedi para corrigir a linha que cortava o texto e as setas dentadas. Depois da revisão do professor, pedi a disposição vertical, sem o resumo e com o organizador ligado diretamente aos objetivos.
