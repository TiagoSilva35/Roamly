Contexto: Todo o relatório da entrega 1, mais o enunciado da entrega 1 e 2

Prompt:O ficheiro Elicitation é o enunciado da primeira entrega de um trabalho que estou a fazer em grupo para uma cadeira de Engenharia de Software. O relatório que entregámos é o documento main.pdf. O ficheiro Description é o enunciado da segunda entrega. A minha parte é fazer o story map. Consegues explicar-me o que é e fazer-me um story board baseado no relatório que entrgámos?

Resposta: Os documentos feitos foram o story map e as user stories
"""
Fiz o story map com base no vosso relatório. É uma tela com três páginas: o mapa, as histórias da Release 1 e as histórias das Releases 2 e 3. Só os autores a podem abrir, por isso partilha-a pelo menu Share se os colegas a quiserem ver. Não a abri para verificar o aspeto visual, por isso vê se algum cartão ficou cortado.

O que é um story map

Chamas-lhe “story board”, mas o enunciado pede um story map (estilo Patton), que é diferente. Um storyboard é uma sequência de ecrãs. Um story map organiza o backlog em duas dimensões:

Na horizontal, a espinha (backbone): as atividades do utilizador pela ordem em que acontecem, ou seja, a jornada. Por baixo de cada atividade ficam as tarefas que a pessoa quer fazer.
Na vertical, as histórias de utilizador: por baixo de cada atividade, ordenadas por prioridade, com as mais importantes em cima.
Em faixas horizontais, as releases: uma linha corta o mapa em fatias. A primeira fatia (o “esqueleto andante”) atravessa a jornada de ponta a ponta com o mínimo útil, e as seguintes acrescentam valor.

A vantagem sobre uma lista plana é ver a jornada completa e decidir o que entra em cada entrega.

Como o construí

Espinha: as 7 áreas de foco do vosso UED: Explorar ideias, Comparar opções, Orçamento, Roteiro, Decidir em grupo, Pagamentos e Clientes [A].
Jornada: a da Inês (organizadora do grupo), com as variantes do agente marcadas com [A].
Histórias: 27, todas no formato “Como… quero… para…”, com 2 critérios de aceitação, tamanho (S ou M) e dependências. Cada uma aponta para os breakdowns (FM.1, SM.14…) e registos (UE07, AE05…) do relatório, para ficarem rastreáveis.
INVEST: evitei épicos, mantendo cada história numa só área de foco e com critérios verificáveis. Onde há dependência ou risco, está escrito no cartão.
Releases:
R1, “Da ideia ao combinado” (14 histórias): a ideia, as ofertas por ligação, o preço final, o total por pessoa, a partilha com o grupo e o registo de quem pagou.
R2 (6 histórias): roteiro, prazo para decidir e lembretes.
R3, versão para agências (7 histórias).

Pontos a confirmar com o grupo

US-13 no relatório. A secção 6.2 do relatório cita a “US-13” como o agente rever e assinar a proposta. Numerei as histórias para que seja mesmo essa, mas convém todos usarem os mesmos IDs.
Roteiro fora da R1. O esqueleto não tem histórias no Roteiro, só passa do orçamento para a decisão. Se quiserem a jornada completa na primeira release, é sobretudo a US-11 que teria de subir.
Ordem das releases. Pus o viajante primeiro e a agência depois, porque o relatório diz que a primeira fase é para jovens. Se o vosso foco for o contrário, a ordem inverte-se.
US-07 (voo sem transporte). Depende de dados de horários de transportes que ainda não sabemos obter. Está marcada como risco.
Casos de uso e BDD. O enunciado pede os três casos de uso para as histórias de maior prioridade. A candidata óbvia é a US-04 (voo por ligação), mas os colegas das outras partes têm de concordar.

Se quiseres, posso afinar os cartões do mapa ou passar as histórias para formato de tabela, para colar no relatório em LaTeX
"""

Opinão: A AI automaticamente criou releases, sem nunca as ter mencionado em momento nenhum. As user stories são curtas e estão escritas da forma INVEST porque o enunciado diziam para as escrever desta forma. Além disso, eu não estava à espera que ela escrevesse as user stories porque só lhe pedi para fazer o story map. No geral, a resposta parece boa, sem necessidade de grandes alterações.
