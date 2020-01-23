json.ignore_nil!
json.extract! book, :id, :title, :author, :genre, :image, :average_rating, :review_count, :description, :suggested_books
json.author_books book.other_books do |books|
  json.extract! books, :id, :title, :image, :average_rating
end
