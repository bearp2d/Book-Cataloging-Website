json.ignore_nil!
json.extract! @author, :id, :name, :image
json.books @author.books do |book|
  json.extract! book, :id, :title, :image
end
json.similar_authors @author.similar_authors do |a|
  json.extract! a, :id, :name, :image
  json.books a.books do |book|
    json.extract! book, :title, :image
    json.genre book.genre, :name, :id
  end
end

json.top_genre @author.top_genre, :name
