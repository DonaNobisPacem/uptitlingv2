json.array!(@landholdings) do |landholding|
  json.extract! landholding, :id, :university_id
  json.url landholding_url(landholding, format: :json)
end
