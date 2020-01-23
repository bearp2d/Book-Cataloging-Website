json.ignore_nil!
json.extract! @book, :id,
                     :title,
                     :author,
                     :description,
                     :image,
                     :genre,
                     :average_rating,
                     :review_count,
                     :suggested_books
json.reviews @book.reviews do |review|
  json.extract! review, :id, :comment, :rating, :user_id
  json.user do
    json.id review.user.id
    json.username review.user.username
    json.image review.user.image
  end
end
json.author_books @book.other_books do |books|
  json.extract! books, :id, :title, :image, :average_rating
end
