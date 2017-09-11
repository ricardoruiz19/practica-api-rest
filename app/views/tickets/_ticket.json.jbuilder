json.extract! ticket, :id, :nombre, :ciudad, :pais, :fecha_inicio, :fecha_evento, :created_at, :updated_at
json.url ticket_url(ticket, format: :json)
