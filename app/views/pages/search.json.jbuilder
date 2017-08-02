json.vets do
  json.array!(@vets) do |vet|
    json.vtitle vet.vtitle
    json.address vet.address
    json.url vet_path(vet)
  end
end