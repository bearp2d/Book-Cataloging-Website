json.ignore_nil!
json.extract! @book, :id, :title, :author, :isbn, :description, :image, :genre, :average_rating
json.reviews @book.reviews do |review|
  json.extract! review, :id, :comment, :rating, :user_id, :suggest
  json.user do
    json.id review.user.id
    json.username review.user.username
  end
end
