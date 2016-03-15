json.array!(@live_clients) do |live_client|
  json.extract! live_client, :id, :artist, :image, :contact
  json.url live_client_url(live_client, format: :json)
end
