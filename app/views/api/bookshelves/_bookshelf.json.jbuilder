json.set! bookshelf.name do
  json.extract! bookshelf, :id
  username = bookshelf.user.username
  userId = bookshelf.user.id
  json.user username
  json.name bookshelf.name
  json.userId userId
  json.books bookshelf.books do |book|
    json.extract! book, :id, :title, :average_rating, :author, :image
  end
end
