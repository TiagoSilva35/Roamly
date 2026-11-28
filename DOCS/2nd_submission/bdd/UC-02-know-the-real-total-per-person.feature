# language: pt
@UC-02
Funcionalidade: Saber o total real por pessoa
  Como organizador(a) do grupo
  Quero ver num só sítio quanto a viagem custa de facto a cada pessoa, já com os extras
  Para saber se a viagem cabe no limite sem refazer as contas à mão

  Contexto:
    Dado que a viagem tem um voo e um alojamento guardados a partir das ligações das ofertas
    E o grupo tem o organizador, o Amigo A e o Amigo B

  @passo-principal @US-09 @SM.14
  Cenário: As opções escolhidas cabem no limite por pessoa
    Dado que a viagem tem o limite de 300 € por pessoa
    E o voo, o alojamento e as atividades guardados somam 294 € por pessoa
    Quando o organizador escolhe o voo, o alojamento e as atividades da viagem
    Então o organizador vê, num só sítio, o total de 294 € por pessoa
    E o organizador vê o preço de cada opção e os seus extras
    E o organizador vê que a viagem cabe no limite de 300 € por pessoa
    E a proposta mostra o total de 294 € por pessoa, pronto para ser partilhado com o grupo

  @passo-principal @US-06
  Cenário: O voo tem bagagem de porão
    Dado que o site do voo indica a bagagem de porão a 34 € por pessoa
    Quando o organizador escolhe esse voo
    Então o total por pessoa já inclui os 34 € da bagagem de porão
    E o organizador vê a bagagem de porão junto do preço do voo

  @ext-2a @US-06 @FM.1 @SM.16 @CM.31
  Cenário: O site não revela o preço dos extras
    Dado que o site do voo não indica o preço da bagagem de porão
    Quando o organizador escolhe esse voo
    Então o voo conta no total por pessoa
    E o total indica que os extras do voo estão por confirmar

  @ext-4a @US-02
  Cenário: A viagem ainda não tem limite por pessoa
    Dado que o Amigo B respondeu «depende do preço»
    E a viagem não tem limite por pessoa
    E o voo, o alojamento e as atividades guardados somam 294 € por pessoa
    Quando o organizador escolhe o voo, o alojamento e as atividades da viagem
    Então o organizador vê, num só sítio, o total de 294 € por pessoa
    E o organizador é lembrado de que não há limite com que comparar o total

  @ext-4b @US-09
  Cenário: O total por pessoa passa o limite
    Dado que a viagem tem o limite de 300 € por pessoa
    E o voo e o alojamento guardados somam 303 € por pessoa
    Quando o organizador escolhe o voo e o alojamento da viagem
    Então o organizador vê, num só sítio, o total de 303 € por pessoa
    E o organizador é avisado de que o total passou o limite de 300 € por pessoa

  @ext-*a @US-09
  Cenário: O preço de um voo escolhido sobe
    Dado que a viagem tem o limite de 300 € por pessoa
    E as opções escolhidas têm um total de 294 € por pessoa
    Quando o preço do voo sobe 19 € por pessoa
    Então o organizador vê o novo total de 313 € por pessoa
    E o organizador é avisado de que o total passou o limite de 300 € por pessoa

  @ext-*b @US-10
  Cenário: O organizador corta um item
    Dado que as opções escolhidas têm um total de 322 € por pessoa
    E incluem a visita à mina de sal, de 28 € por pessoa
    Quando o organizador corta a visita à mina de sal
    Então o organizador vê o novo total de 294 € por pessoa
    E o organizador continua a ver a visita à mina de sal, marcada como cortada

  @ext-*b @US-10
  Cenário: O organizador repõe um item cortado
    Dado que as opções escolhidas têm um total de 294 € por pessoa
    E a visita à mina de sal, de 28 € por pessoa, está marcada como cortada
    Quando o organizador repõe a visita à mina de sal
    Então o organizador vê o novo total de 322 € por pessoa

  @ext-*c @US-08
  Cenário: O site do fornecedor de uma oferta escolhida deixa de poder ser lido
    Dado que as opções escolhidas têm um total de 294 € por pessoa
    Quando o site do fornecedor do voo deixa de poder ser lido
    Então o total continua a ser de 294 € por pessoa, com o último preço conhecido do voo
    E o organizador vê que o preço do voo pode estar desatualizado
