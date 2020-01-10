json.ignore_nil!
json.extract! @author, :id, :name, :image, :author_rating
json.books @author.books do |book|
  json.extract! book, :id, :title, :image, :average_rating, :description
end
json.top_genre @author.top_genre, :name
json.similar_authors @author.similar_authors do |a|
  json.extract! a, :id, :name, :image, :author_rating
  json.books a.books do |book|
    json.extract! book, :title, :image, :average_rating, :description
    json.genre book.genre, :name, :id
  end
end
