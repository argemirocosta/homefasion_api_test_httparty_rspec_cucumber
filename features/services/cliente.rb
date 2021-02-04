module Rest
  class Cliente
    include HTTParty

    base_uri CONFIG['base_uri']

    def get_cliente(path, id_cliente)
      auth = { username: 'usuario1', password: 'senha1' }
      self.class.get(path + id_cliente, basic_auth: auth)
    end
  end
end
