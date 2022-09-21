json.extract! livro, :id, :titulo, :categoria, :data_cad, :data_alte, :created_at, :updated_at
json.url livro_url(livro, format: :json)
