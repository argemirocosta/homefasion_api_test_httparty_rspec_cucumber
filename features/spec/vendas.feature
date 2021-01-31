#language: pt

@health_check
Funcionalidade: Testar as funcionalidade de Vendas

  Cenário: Verificar Health Check
    Dado que acesso o endpoint "/servidor"
    Quando autentico na API
    Então verifico o status code 200
    E a mensagem "Servidor no ar"