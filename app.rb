require 'sinatra'
require 'json'

# Ruta para recibir eventos POST
post '/webhook' do
  # Lee el cuerpo de la solicitud
  request_body = request.body.read
  payload = JSON.parse(request_body)

  # Log de la carga útil recibida
  puts "Payload recibido: #{payload}"

  # Respuesta al cliente
  status 200
  content_type :json
  { message: 'Webhook recibido con éxito', data: payload }.to_json
end
