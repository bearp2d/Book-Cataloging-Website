json.extract! @book, :id, :title, :author_id, :isbn, :description, :image, :genre
json.reviews @book.reviews do |review|
  json.extract! review, :id, :comment, :rating, :user_id, :suggest
  json.user do
    json.id review.user.id
    json.username review.user.username
  end
end
