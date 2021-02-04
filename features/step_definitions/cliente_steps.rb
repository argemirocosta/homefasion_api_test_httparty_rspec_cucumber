Dado('que acesso o endpoint {string} passando um id') do |path|
  @id_cliente = sort_id
  @response = cliente.get_cliente(path, @id_cliente)
end

Entao('o id do cliente') do
  expect(@response.parsed_response['id']).to eq @id_cliente.to_i
end
