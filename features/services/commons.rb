module Rest
  class Commons
    include HTTParty

    base_uri CONFIG['base_uri']
    headers  'Content-Type' => 'application/json'

    def get_commons(path)
      auth = { username: 'usuario1', password: 'senha1' }
      self.class.get(path, basic_auth: auth)
    end

    def post_commons(path, payload)
      auth = { username: 'usuario1', password: 'senha1' }
      self.class.post(path, basic_auth: auth, body: payload.to_json)
    end
  end
end
