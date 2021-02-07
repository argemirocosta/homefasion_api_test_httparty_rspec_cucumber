Dado('que acesso o endpoint {string}') do |path|
  @response = commons.get_commons(path)
end

Entao('verifico o status code {int}') do |code|
  expect(@response.code).to eq code
end

Entao('a mensagem {string}') do |mensagem|
  expect(@response.body).to eq mensagem
end

Entao('que o resultado não é nulo') do
  expect(@response.body).not_to be_empty
end

Dado('que acesso o endpoint {string} para realizar um cadastro de {string}') do |path, tipo|
  @payload = build(tipo).usuarios_hash
  @response = commons.post_commons(path, @payload)
end
