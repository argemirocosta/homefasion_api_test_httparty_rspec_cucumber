#language: pt

@cliente
Funcionalidade: Testar as funcionalidade de Cliente

  @healthcheck
  Cenário: Verificar Health Check de Cliente
    Dado que acesso o endpoint "/cliente/servidor"
    Então verifico o status code 200
    E a mensagem "Servidor no ar"

  Cenário: Verificar listagem de todos os clientes
    Dado que acesso o endpoint "/cliente"
    Entao verifico o status code 200
    E que o resultado não é nulo

  @wip
  Cenário: Verificar busca de cliente específico
    Dado que acesso o endpoint "/cliente/" passando um id de cliente
    Entao verifico o status code 200
    E o id do cliente