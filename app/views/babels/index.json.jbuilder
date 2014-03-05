json.array!(@babels) do |babel|
  json.extract! babel, :message
  json.url babel_url(babel, format: :json)
end