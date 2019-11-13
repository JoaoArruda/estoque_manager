json.extract! estoque, :id, :data, :quantidade, :pessoa_id, :operacao_id, :produto_id, :created_at, :updated_at
json.url estoque_url(estoque, format: :json)
