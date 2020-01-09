json.array! @bookshelves.each do |bookshelf|
  json.extract! bookshelf, :id, :name, :books, :user_id
end
