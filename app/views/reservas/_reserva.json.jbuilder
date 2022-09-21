json.extract! reserva, :id, :data_reserva, :data_devolucao, :status_reserva, :created_at, :updated_at
json.url reserva_url(reserva, format: :json)
