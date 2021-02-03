#language: pt

@venda
Funcionalidade: Testar as funcionalidade de Venda

  @healthcheck
  Cenário: Verificar Health Check de Venda
    Dado que acesso o endpoint "/venda/servidor"
    Então verifico o status code 200
    E a mensagem "Servidor no ar"
