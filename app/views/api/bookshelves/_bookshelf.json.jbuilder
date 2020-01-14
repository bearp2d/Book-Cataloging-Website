json.set! bookshelf.name do
  json.extract! bookshelf, :id
  username = bookshelf.user.username
  userId = bookshelf.user.id
  json.user username
  json.userId userId
  json.books bookshelf.books do |book|
    json.extract! book, :id, :title, :average_rating
  end

#
end

# json.set! bookshelf.name do
#   json.array! bookshelf.books do |book|
#     json.extract! book, :id, :average_rating, :title
#   end
# end

json.


  # json.ignore_nil!
  # json.array! @books do |book|
  #   json.partial! 'book', book: book
  #   json.reviews book.reviews do |review|
  #     json.extract! review, :id, :comment, :rating, :user_id, :suggest
  #     json.user do
  #       json.id review.user.id
  #       json.username review.user.username
  #       json.image review.user.image
  #     end
  #   end
  # end
