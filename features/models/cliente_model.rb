class ClienteModel
  attr_accessor :nome, :cpf, :usuario

  def gerador_hash
    {
      nome: @nome,
      cpf: @cpf,
      usuario: @usuario
    }
  end
end
