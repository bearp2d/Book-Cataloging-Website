json.array! @reviews do |review|
  json.set! review.id do
    json.extract! review, :id, :rating, :comment, :suggest
  end
end
