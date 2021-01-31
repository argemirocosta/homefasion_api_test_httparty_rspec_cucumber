Dado('que acesso o endpoint {string}') do |endpoint|
  $uri_base = 'http://localhost:8080'+endpoint
  log $uri_base
end

Quando('autentico na API') do
  auth = {:username => "usuario1", :password => "senha1"}
  $response = HTTParty.get($uri_base, :basic_auth => auth)
end

Então('verifico o status code {int}') do |code|
  expect($response.code).to eq (code)
end

E('a mensagem {string}') do |mensagem|
  expect($response.body).to eq mensagem
end