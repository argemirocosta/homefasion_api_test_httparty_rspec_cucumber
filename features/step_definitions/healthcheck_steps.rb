Dado('que acesso o endpoint {string}') do |path|
  @response = healthcheck.get_healthcheck(path)
end

Entao('verifico o status code {int}') do |code|
  expect(@response.code).to eq code
end

E('a mensagem {string}') do |mensagem|
  expect(@response.body).to eq mensagem
end
