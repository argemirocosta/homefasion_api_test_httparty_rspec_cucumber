module Rest
  class Usuario
    include HTTParty

    base_uri CONFIG['base_uri']

    def get_usuario(path, id_usuario)
      auth = { username: 'usuario1', password: 'senha1' }
      self.class.get(path + id_usuario, basic_auth: auth)
    end
  end
end
