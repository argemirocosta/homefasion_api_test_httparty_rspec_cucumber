require 'faker'
require_relative '../models/usuarios_model'
require_relative '../models/cliente_model'

def sort_id(tipo_massa)
  user_file = YAML.load_file("features/support/data/#{tipo_massa}.yml")
  ids = (user_file['ids']).to_s
  ids = ids.split(',')
  ids[rand(1...ids.length)]
end

FactoryBot.define do
  factory :usuarios, class: UsuariosModel do
    nome { Faker::Name.name }
    login { Faker::Artist.name }
    senha { Faker::Number.number(digits: 6).to_s }
    ativo { true }
  end
end

FactoryBot.define do
  factory :cliente, class: ClienteModel do
    nome { Faker::Name.name }
    cpf { Faker::Number.number(digits: 11).to_s }
    usuario { { id: 155 } }
  end
end
