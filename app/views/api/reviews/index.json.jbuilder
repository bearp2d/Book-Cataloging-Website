json.array! @reviews do |review|
  json.extract! review, :id, :rating, :comment, :suggest
end
