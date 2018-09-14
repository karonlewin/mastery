json.array!(@appointments) do |appointment|
  json.extract! appointment, :id, :client
  json.start appointment.start_at
  json.end appointment.end_at
  json.title appointment.client
  json.url appointment_url(appointment, format: :json)
end
