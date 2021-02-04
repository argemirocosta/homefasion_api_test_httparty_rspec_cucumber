module Rest
  class Pagamento
    include HTTParty

    base_uri CONFIG['base_uri']

    def get_pagamento(path, id_pagamento)
      auth = { username: 'usuario1', password: 'senha1' }
      self.class.get(path + id_pagamento, basic_auth: auth)
    end
  end
end
