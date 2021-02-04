def sort_id(tipo_massa)
  user_file = YAML.load_file("features/support/data/#{tipo_massa}.yml")
  ids = (user_file['ids']).to_s
  ids = ids.split(',')
  ids[rand(1...ids.length)]
end
