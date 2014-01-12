json.array!(@myapps) do |myapp|
  json.extract! myapp, :id
  json.url myapp_url(myapp, format: :json)
end
