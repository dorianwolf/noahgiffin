json.array!(@studio_clients) do |studio_client|
  json.extract! studio_client, :id, :artist, :image, :album, :role
  json.url studio_client_url(studio_client, format: :json)
end
