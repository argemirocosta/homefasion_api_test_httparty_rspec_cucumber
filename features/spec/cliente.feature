#language: pt

@cliente
Funcionalidade: Testar as funcionalidade de Cliente

  @healthcheck
  Cenário: Verificar Health Check de Cliente
    Dado que acesso o endpoint "/cliente/servidor"
    Então verifico o status code 200
    E a mensagem "Servidor no ar"
