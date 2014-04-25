json.array!(@works) do |work|
  json.extract! work, :id, :name, :artist_id, :year_completed, :materials, :image_url
  json.url work_url(work, format: :json)
end
