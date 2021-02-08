class UsuariosModel
  attr_accessor :nome, :login, :senha, :ativo

  def gerador_hash
    {
      nome: @nome,
      login: @login,
      senha: @senha,
      ativo: @ativo
    }
  end
end
