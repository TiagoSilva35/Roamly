# Roamly: glossário do modelo de domínio (linguagem ubíqua)

Os termos são os do relatório e da interface.

## Planeamento da viagem

| Termo | Significado |
|---|---|
| **Viagem** | A viagem que o grupo quer fazer: destino, datas possíveis e tudo o que se planeia à volta. É a raiz do contexto. |
| **Ideia** | Uma ligação de vídeo ou um texto que dá início a uma viagem, guardada com a origem à vista. O sistema nunca interpreta o vídeo; pede o destino em texto. |
| **Orçamento** | O limite por pessoa definido pelo coordenador. Todos os preços mostrados são comparados com ele. |
| **Proposta** | O que o grupo vê para decidir: as opções, os preços e o total por pessoa, partilhados numa só ligação. Reflete sempre as alterações posteriores. |
| **Opção** | Uma coisa que pode entrar numa proposta (voo, alojamento ou atividade), com ligação de origem, preço e estado: candidata, cortada (riscada mas visível) ou acordada. |
| **Opção de voo / alojamento / atividade** | Tipos de Opção. Um voo sabe se não há transporte para o aeroporto à hora de partida; um alojamento tem noites e preço por noite; uma atividade (do roteiro da IA) fica confirmada ou descartada depois de verificada no mapa. |
| **Preço** | Preço base mais extras (p. ex. bagagem de porão), dando o preço final; se o site esconder os extras, aparecem como «por confirmar» em vez de serem omitidos. |
| **Total por pessoa** | Soma do preço final por pessoa de todas as opções não cortadas, mais o transporte até ao aeroporto. Avisa quando ultrapassa o Orçamento. |

## Decisão do grupo

| Termo | Significado |
|---|---|
| **Grupo** | As pessoas que viajam juntas. Tem exatamente um coordenador. |
| **Membro** | Uma pessoa do grupo que pode dar opiniões e indicar disponibilidade. |
| **Coordenador** | O membro que planeia: partilha a proposta, define o prazo, regista decisões e pagamentos. Só o coordenador pode marcar um pagamento como feito. |
| **Opinião («Concordo» / «Prefiro outra»)** | A posição de um membro sobre uma opção. O coordenador só reserva quando todos concordam. |
| **Disponibilidade** | Se um membro pode nas datas propostas, ou em que outras datas pode. |
| **Decisão** | O que o grupo combinou, com um prazo enquanto está aberta. Fica junto das opções a que se refere. |

## Vigilância de preços

| Termo | Significado |
|---|---|
| **Oferta vigiada** | Uma ligação guardada que o Roamly volta a ler continuamente. Se não a conseguir ler, o coordenador preenche o preço à mão. |
| **Leitura de preço** | Um preço lido num dado momento. |
| **Alerta de preço** | Gerado quando o preço de uma oferta vigiada sobe: mostra de quanto e notifica todos os membros do grupo, haja ou não um prazo pendente. O Roamly não congela preços nem reserva. |

## Acerto de pagamentos

| Termo | Significado |
|---|---|
| **Acerto** | Tudo o que é devido numa viagem depois de as opções serem acordadas, incluindo o que o coordenador tem de adiantar. |
| **Parte da despesa** | O que cada membro deve, calculado a partir das opções acordadas. |
| **Pagamento** | Um registo de que um membro pagou a sua parte, feito pelo coordenador. O Roamly regista; não processa dinheiro. |
| **Lembrete de pagamento** | Enviado aos membros cuja parte não está marcada como paga, na altura que o coordenador escolher. |

## Balcão da agência [A]

| Termo | Significado |
|---|---|
| **Quadro do cliente** | Um quadro por cliente, com os pedidos pendentes e as propostas por enviar. |
| **Pedido do cliente** | O roteiro que o cliente traz, o orçamento, as datas flexíveis e «o que não abdicam»; assinala os campos em falta. |
| **Lembrete no quadro** | Uma nota no quadro de um cliente (substitui o papel autocolante). |
| **Fornecedor** | Fornecedor que não está online, guardado com as notas do agente; aparece entre as opções. |
| **Revisão da proposta** | A assinatura do agente; o cliente não vê nada antes dela. |

## Mapa de contextos

| A montante | A jusante | Relação | Notas |
|---|---|---|---|
| Planeamento da viagem | Decisão do grupo | Cliente/Fornecedor | A Decisão do grupo refere propostas e opções só por identificador (IdDaProposta, IdDaOpção). |
| Vigilância de preços | Planeamento da viagem | Camada anticorrupção | Os preços lidos são traduzidos para o Preço de uma Opção; a introdução manual é a alternativa. |
| Decisão do grupo | Acerto de pagamentos | Evento publicado | As opções acordadas geram Partes da despesa. |
| Vigilância de preços | Decisão do grupo | Evento publicado | Um Alerta de preço notifica todos os Membros. |
| Balcão da agência [A] | Planeamento da viagem | Open host / conformista | A agência reutiliza Proposta e Opção, acrescentando revisão e fornecedores. |
