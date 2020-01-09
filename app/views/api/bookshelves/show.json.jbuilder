json.extract! @bookshelf, :id, :user_id, :name
json.set! :books, @bookshelf.books do |book|
  json.extract! book, :id, :title, :author_id, :image
end
