module Rest
  class Healthcheck
    include HTTParty

    base_uri CONFIG['base_uri']

    def get_healthcheck(path)
      auth = { username: 'usuario1', password: 'senha1' }
      self.class.get(path, basic_auth: auth)
    end
  end
end
