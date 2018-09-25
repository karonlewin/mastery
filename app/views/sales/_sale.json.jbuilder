json.extract! sale, :id, :total, :client_id, :store_id, :user_id, :created_at, :updated_at
json.url sale_url(sale, format: :json)
