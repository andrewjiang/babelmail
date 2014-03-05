json.array!(@contacts) do |contact|
  json.extract! contact, :firstname, :lastname, :email, :language
  json.url contact_url(contact, format: :json)
end