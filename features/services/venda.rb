module Rest
  class Venda
    include HTTParty

    base_uri CONFIG['base_uri']

    def get_venda(path, id_venda)
      auth = { username: 'usuario1', password: 'senha1' }
      self.class.get(path + id_venda, basic_auth: auth)
    end
  end
end
