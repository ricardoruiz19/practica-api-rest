json.extract! event, :id, :nombre, :ciudad, :fecha_preventa, :fecha_evento, :created_at, :updated_at
json.url event_url(event, format: :json)
