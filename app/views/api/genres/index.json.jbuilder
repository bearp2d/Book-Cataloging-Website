json.array! @genres do |genre|
  json.extract! genre, :name
end
