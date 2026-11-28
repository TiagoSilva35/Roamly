Contexto: Todo o relatório da entrega 1, o enunciado da entrega 1 e 2, mais o story map e US fornecidos (não os corrigidos)

Prompt: My new task is now this: "Domain model (class-style diagram) in the ubiquitous language: Trip, Proposal, Option (flight/stay/activity), Budget, Total per person, Group, Member/Coordinator, Vote/Opinion, Availability, Decision, Price alert, Expense share, Payment… Derived from the artifact and sequence models", can you do it?

Resposta: Deu o domain model em png e o glossário em formato md e tex, mas em inglês porque lhe fiz a prompt em inglês
"""
Sim, está feito. O diagrama de classes tem 5 contextos delimitados, e o brief da entrega 2 pede pelo menos 2, mais um glossário curto.

Trip Planning: Trip, Idea, Budget, Proposal, Option (com Flight, Stay e Activity), Price e Total per person.
Group Decision: Group, Member, Coordinator, Opinion, Availability e Decision.
Price Watching: Watched offer, Price observation e Price alert.
Settlement: Settlement, Expense share, Payment e Payment reminder.
Agency Desk [A]: Client board, Client request, Supplier, Proposal review e Board reminder.

As setas a tracejado roxo ligam contextos e são só referências por id (por exemplo, Opinion aponta para Option). O glossário traz o termo em inglês, o equivalente em português e a definição. Tem ainda uma tabela com a relação entre contextos.

Os ficheiros são:

Visão geral: domain_model_overview.png e .pdf.
Figuras por contexto: domain_model_figures.zip, com uma figura por contexto em PDF, PNG e SVG.
Glossário: glossary.tex (longtable com booktabs) e glossary.md.

A visão geral é enorme, e num A4 o texto fica ilegível. Para o relatório, usa as figuras por contexto e deixa a visão geral como figura ampliável ou em anexo. Só vi o layout em imagem, não compilei o LaTeX.

Sequence models: não tenho os teus modelos de sequência da entrega 2. Derivei tudo do relatório da entrega 1 (os modelos de sequência e de artefacto consolidados) e das histórias. Se os teus colegas fizeram versões novas, diz-me e comparo.

Pagamentos: segui as histórias (US-21): o Roamly regista os pagamentos mas não os processa. Isto contradiz a ideia inicial de o dinheiro passar pelo sistema como intermediário. Convém alinhar com o grupo.

Língua: os nomes das classes seguem o inglês do brief. Se o relatório estiver todo em português, posso trocar para português.
"""

(Numa segunda prompt pedi para traduzir para português, e fê-lo, mantendo ainda uma coluna com os termos em inglês)

Prompt 3: Penso que está tudo certo, exceto num tópico. O alerta de preço é aparece para todos os membros, não apenas para o coordenador, mesmo que não haja um prazo pendente. Não sei onde foste buscar esta ideia, mas diz-me pois está errada. Além disso, no glossário, remove a coluna de "termo em inglês" porque não é necessária. Faz estas alterações.

Resposta: Devolveu os artefactos exatamente com as correções que lhe pedi
"""
Já corrigi as duas coisas e reenviei os ficheiros.

Alerta de preço: agora notifica todos os membros do grupo, haja ou não um prazo pendente. A seta do diagrama passou de Coordenador para Membro. Também alterei a definição no glossário e a linha da tabela do mapa de contextos.

De onde veio o erro: foi culpa minha. Na história US-17 (definir um prazo) escrevi eu o critério "se o preço subir antes do prazo, o grupo é avisado". Na US-08 (alertar quando o preço sobe) o alerta ia só para a organizadora. Juntei as duas e inventei a regra "o grupo só é avisado se houver prazo pendente". O relatório da entrega 1 não diz isso, e eu devia ter validado contigo.

Glossário: removi a coluna "Termo em inglês" nas versões .md e .tex. Ajustei a largura das colunas do .tex, que continua sem ter sido compilado.

Story map: continua com a regra antiga, por isso as histórias estão agora inconsistentes com o modelo. A US-08 diz que só a organizadora é avisada, e o segundo critério da US-17 depende do prazo. Queres que corrija as duas histórias no story map e nas tabelas?
"""

Opinião: O AI poupou imenso trabalho ao criar logo o modelo de domínio (que mostrou ser bastante grande). Além disso, gerou o glossário sem eu lhe ter pedido, que também serviu de grande ajuda pois era o trabalho de um outro membro do grupo.
O único erro que o AI fez foi devido ao facto de eu não lhe ter dado as USs corrigidas pelo grupo, logo eu utilizou o que tinha fornecido inicialmente. Mas como as alterações às USs foram poucas, não houve muitos erros.
