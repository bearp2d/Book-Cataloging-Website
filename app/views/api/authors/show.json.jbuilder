json.extract! @author, :id, :name, :image
json.books @author.books do |book|
  json.extract! book, :id, :title
  json.genre book.genre
end
json.genres @author.genres do |genre|
  json.genre genre.name
end
