Dado('que acesso o endpoint {string} passando um id de pagamento') do |path|
  @id_pagamento = sort_id('pagamento')
  @response = pagamento.get_pagamento(path, @id_pagamento)
end

Entao('o id do pagamento') do
  expect(@response.parsed_response['id']).to eq @id_pagamento.to_i
end
