#language: pt

@venda
Funcionalidade: Testar as funcionalidade de Venda

  @healthcheck
  Cenário: Verificar Health Check de Venda
    Dado que acesso o endpoint "/venda/servidor"
    Então verifico o status code 200
    E a mensagem "Servidor no ar"

  Cenário: Verificar listagem de todos as vendas
    Dado que acesso o endpoint "/venda"
    Entao verifico o status code 200
    E que o resultado não é nulo

  @wip
  Cenário: Verificar busca de venda específica
    Dado que acesso o endpoint "/venda/" passando um id de venda
    Entao verifico o status code 200
    E o id da venda
