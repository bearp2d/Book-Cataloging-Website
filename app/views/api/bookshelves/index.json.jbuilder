json.ignore_nil!
json.array! @bookshelves.each do |bookshelf|
  json.partial! 'bookshelf', bookshelf: bookshelf
end
