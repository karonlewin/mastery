json.extract! appointment, :id, :client, :start_at, :end_at, :created_at, :updated_at
json.url appointment_url(appointment, format: :json)
