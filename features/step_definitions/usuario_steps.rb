Dado('que acesso o endpoint {string} passando um id de usuario') do |path|
  @id_usuario = sort_id('usuario')
  @response = usuario.get_usuario(path, @id_usuario)
end

Entao('o id do usuario') do
  expect(@response.parsed_response['id']).to eq @id_usuario.to_i
end
