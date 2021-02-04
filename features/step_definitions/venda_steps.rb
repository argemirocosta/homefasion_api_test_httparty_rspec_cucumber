Dado('que acesso o endpoint {string} passando um id de venda') do |path|
  @id_pagamento = sort_id('venda')
  @response = pagamento.get_pagamento(path, @id_pagamento)
end

Entao('o id da venda') do
  expect(@response.parsed_response['id']).to eq @id_pagamento.to_i
end
