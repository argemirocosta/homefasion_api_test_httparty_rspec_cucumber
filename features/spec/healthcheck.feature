#language: pt

@healthcheck
Funcionalidade: Testar as funcionalidade de Health Check

  Cenário: Verificar Health Check de Venda
    Dado que acesso o endpoint "/venda/servidor"
    Então verifico o status code 200
    E a mensagem "Servidor no ar"

  Cenário: Verificar Health Check de Cliente
    Dado que acesso o endpoint "/cliente/servidor"
    Então verifico o status code 200
    E a mensagem "Servidor no ar"

  Cenário: Verificar Health Check de Usuário
    Dado que acesso o endpoint "/usuarios/servidor"
    Então verifico o status code 200
    E a mensagem "Servidor no ar"

  Cenário: Verificar Health Check de Pagamento
    Dado que acesso o endpoint "/pagamento/servidor"
    Então verifico o status code 200
    E a mensagem "Servidor no ar"