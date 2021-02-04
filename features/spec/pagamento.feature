#language: pt

@pagamento
Funcionalidade: Testar as funcionalidade de Pagamento

  @healthcheck
  Cenário: Verificar Health Check de Usuário
    Dado que acesso o endpoint "/pagamento/servidor"
    Então verifico o status code 200
    E a mensagem "Servidor no ar"

  Cenário: Verificar listagem de todos os pagamentos
    Dado que acesso o endpoint "/pagamento"
    Entao verifico o status code 200
    E que o resultado não é nulo

  @wip
  Cenário: Verificar busca de pagamento específico
    Dado que acesso o endpoint "/pagamento/" passando um id de pagamento
    Entao verifico o status code 200
    E o id do pagamento
