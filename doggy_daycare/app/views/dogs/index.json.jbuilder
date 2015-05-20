json.array!(@dogs) do |dog|
  json.extract! dog, :id, :name, :breed, :age, :owner_id
  json.url dog_url(dog, format: :json)
end
