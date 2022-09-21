json.extract! usuario, :id, :nome, :email, :senha, :permissao, :created_at, :updated_at
json.url usuario_url(usuario, format: :json)
