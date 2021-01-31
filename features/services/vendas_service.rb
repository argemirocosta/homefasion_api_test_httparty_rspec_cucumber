module Venda
    include HTTParty
    base_uri 'http://localhost:8080/venda'
    format :json
    
end