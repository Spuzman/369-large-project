json.array!(@artists) do |artist|
  json.extract! artist, :id, :name, :movement_id, :born, :died
  json.url artist_url(artist, format: :json)
end
