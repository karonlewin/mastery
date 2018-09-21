json.extract! client, :id, :name, :mobile_number, :created_at, :updated_at
json.url client_url(client, format: :json)
