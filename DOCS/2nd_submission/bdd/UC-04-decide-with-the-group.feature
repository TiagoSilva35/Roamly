# language: pt
@UC-04
Funcionalidade: Levar o grupo a decidir sobre a proposta
  Como organizador(a) do grupo
  Quero que cada membro diga em que datas pode ir e se aceita cada item da proposta
  Para registar o que o grupo combinou antes de o preço mudar

  Contexto:
    Dado que a proposta da viagem tem um total de 294 € por pessoa, dentro do limite de 300 € por pessoa
    E o grupo tem o organizador, o Amigo A e o Amigo B

  @passo-principal @US-14 @US-15 @US-16 @US-31 @US-18
  Cenário: Todos podem ir nas datas propostas e aceitam todos os itens
    Dado que o organizador partilhou a proposta com o grupo
    E o Amigo A e o Amigo B podem ir nas datas propostas
    E o Amigo A e o Amigo B aceitam todos os itens
    Quando o organizador regista na proposta o que o grupo combinou
    Então todos os membros veem a decisão junto dos itens a que se refere
    E o organizador vê que todos responderam e que não há itens em divergência

  @passo-principal @US-14 @US-10
  Cenário: A proposta partilhada mostra o que foi cortado
    Dado que o organizador cortou a visita à mina de sal da proposta
    Quando o organizador partilha a proposta com o grupo
    Então cada membro vê os itens, os preços e o total de 294 € por pessoa
    E cada membro vê que a visita à mina de sal foi cortada e porquê

  @ext-2a @US-14 @FM.9 @SM.21 @AM.25
  Cenário: Um membro não abre a proposta partilhada
    Dado que o organizador partilhou a proposta com o grupo
    E o Amigo A não abriu a proposta
    Quando o organizador envia ao Amigo A um resumo da proposta
    Então o Amigo A recebe um resumo com o total de 294 € por pessoa, que se lê na própria conversa do grupo
    E o organizador continua a ver o Amigo A entre quem ainda não respondeu

  @ext-3a @US-15 @US-31
  Cenário: Um membro não pode ir nas datas propostas
    Dado que o organizador partilhou a proposta com o grupo
    E a proposta é para as datas de 6 a 10 de março
    Quando o Amigo B indica que não pode nessas datas, mas pode de 13 a 17 de março
    Então o organizador vê, junto da resposta do Amigo B, que ele pode de 13 a 17 de março
    E as datas da proposta continuam a ser de 6 a 10 de março até o organizador decidir refazer a pesquisa

  @ext-4a @US-16
  Cenário: Um membro não aceita um item
    Dado que o organizador partilhou a proposta com o grupo
    Quando o Amigo A indica que não aceita o alojamento: «dormitório não»
    Então todos os membros veem a resposta do Amigo A junto do alojamento
    E o organizador vê que há divergência no alojamento

  @ext-5a @US-31 @FM.8
  Cenário: Os membros demoram a responder
    Dado que o organizador partilhou a proposta com o grupo há dois dias
    E o Amigo A já indicou as suas datas e a sua opinião sobre cada item
    E o Amigo B ainda não respondeu
    Quando o organizador consulta as respostas do grupo
    Então o organizador vê que falta a resposta do Amigo B
    E as datas e as opiniões do Amigo A continuam guardadas

  @ext-6a @US-18 @SM.22 @PM.29
  Cenário: O grupo decide ao vivo, à volta de um só telemóvel
    Dado que o organizador partilhou a proposta com o grupo
    E o grupo combinou as atividades no café, à volta de um só telemóvel
    Quando o organizador regista na proposta o que o grupo combinou
    Então todos os membros veem a decisão junto dos itens a que se refere

  @ext-*b @US-08 @FM.2 @SM.17
  Cenário: O preço de um voo sobe enquanto o grupo decide
    Dado que o organizador partilhou a proposta com o grupo
    E o Amigo B ainda não respondeu
    Quando o preço do voo sobe 19 € por pessoa
    Então o organizador e os membros são avisados de que o voo subiu 19 € por pessoa
    E o aviso diz só de quanto subiu, sem mensagens de urgência
    E todos os membros veem na proposta o novo total de 313 € por pessoa
