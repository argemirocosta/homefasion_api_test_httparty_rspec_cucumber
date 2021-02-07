class UsuariosModel
  attr_accessor :nome, :login, :senha, :ativo

  def usuarios_hash
    {
      nome: @nome,
      login: @login,
      senha: @senha,
      ativo: @ativo
    }
  end
end
