json.ignore_nil!
json.extract! @book, :id,
                     :title,
                     :author,
                     :isbn,
                     :description,
                     :image,
                     :genre,
                     :average_rating,
                     :review_count,
                     :suggest_percentage,
                     :suggested_books
json.reviews @book.reviews do |review|
  json.extract! review, :id, :comment, :rating, :user_id, :suggest
  json.user do
    json.id review.user.id
    json.username review.user.username
  end
end
json.author_books @book.other_books do |books|
  json.extract! books, :id, :title, :image, :average_rating, :suggest_percentage
end
