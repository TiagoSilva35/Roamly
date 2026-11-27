# language: pt
@UC-01
Funcionalidade: Definir os limites da viagem
  Como organizador(a) do grupo
  Quero indicar quanto cada pessoa pode gastar e em que datas o grupo pode viajar
  Para que tudo o que eu juntar à viagem seja comparado com o orçamento e as datas do grupo

  Contexto:
    Dado que existe uma ideia de viagem guardada: «Cracóvia por 150 €»
    E a viagem ainda não tem destino

  @passo-principal @US-02
  Cenário: O grupo sabe quanto cada pessoa pode gastar
    Dado que o grupo pode gastar até 300 € por pessoa
    Quando o organizador indica o limite de 300 € por pessoa
    Então o organizador vê na viagem o limite de 300 € por pessoa

  @passo-principal @US-02 @US-28
  Cenário: O grupo sabe em que datas pode viajar
    Dado que a viagem tem o limite de 300 € por pessoa
    E o grupo pode viajar de 6 a 17 de março
    Quando o organizador indica a janela de datas de 6 a 17 de março
    Então o organizador vê na viagem a janela de datas de 6 a 17 de março

  @ext-1a @US-02
  Cenário: Ainda não se sabe quanto o grupo pode gastar
    Dado que o Amigo B respondeu «depende do preço»
    E a viagem não tem limite por pessoa
    Quando o organizador junta uma oferta de voo à viagem
    Então o organizador é lembrado de que não há limite com que comparar a oferta
    E a oferta não é comparada com nenhum limite por pessoa

  @ext-3a @US-28
  Cenário: O grupo pode ir em qualquer altura de um mês
    Dado que o grupo pode viajar em qualquer altura de março: «mês inteiro»
    Quando o organizador indica todo o mês de março como janela de datas
    Então o organizador vê na viagem a janela de datas de 1 a 31 de março
    E a viagem continua sem destino

  @ext-*a @US-28
  Cenário: As datas possíveis mudam depois de já haver opções na viagem
    Dado que a viagem tem o limite de 300 € por pessoa e a janela de datas de 6 a 17 de março
    E a viagem já tem duas opções de voo: uma a 6 de março e outra a 13 de março
    E o Amigo B só pode a partir de sexta-feira, 13 de março
    Quando o organizador indica a nova janela de datas de 13 a 17 de março
    Então o organizador é avisado de que o voo de 6 de março ficou fora das datas possíveis
    E o voo de 13 de março continua dentro das datas possíveis
    E o limite de 300 € por pessoa continua guardado
