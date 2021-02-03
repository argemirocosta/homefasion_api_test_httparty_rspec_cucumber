#language: pt

@usuario
Funcionalidade: Testar as funcionalidade de Usuário

  @healthcheck
  Cenário: Verificar Health Check de Usuário
    Dado que acesso o endpoint "/usuarios/servidor"
    Então verifico o status code 200
    E a mensagem "Servidor no ar"
