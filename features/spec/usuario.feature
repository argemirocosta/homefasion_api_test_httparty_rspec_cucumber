#language: pt

@usuario
Funcionalidade: Testar as funcionalidade de Usuário

  @healthcheck
  Cenário: Verificar Health Check de Usuário
    Dado que acesso o endpoint "/usuarios/servidor"
    Então verifico o status code 200
    E a mensagem "Servidor no ar"

  @wip
  Cenário: Verificar listagem de todos os usuários
    Dado que acesso o endpoint "/usuarios"
    Entao verifico o status code 200
    E que o resultado não é nulo

  @wip
  Cenário: Verificar busca de usuário específico
    Dado que acesso o endpoint "/usuarios/" passando um id de usuario
    Entao verifico o status code 200
    E o id do usuario