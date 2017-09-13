<<<<<<< HEAD
json.extract! ticket, :id, :event_id, :created_at, :updated_at
=======
json.extract! ticket, :id, :nombre, :ciudad, :pais, :fecha_inicio, :fecha_evento, :created_at, :updated_at
>>>>>>> e726aa3161ce6e066dfcacd5328d2a5029866644
json.url ticket_url(ticket, format: :json)
