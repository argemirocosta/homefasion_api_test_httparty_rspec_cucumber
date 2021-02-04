def sort_id
  user_file = YAML.load_file('features/support/data/cliente.yml')
  ids = (user_file['ids']).to_s
  ids = ids.split(',')
  ids[rand(1...ids.length)]
end
