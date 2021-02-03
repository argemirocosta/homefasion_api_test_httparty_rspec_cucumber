Dado('que acesso o endpoint {string}') do |path|
  @response = commons.get_commons(path)
end

Entao('verifico o status code {int}') do |code|
  expect(@response.code).to eq code
end

E('a mensagem {string}') do |mensagem|
  expect(@response.body).to eq mensagem
end
