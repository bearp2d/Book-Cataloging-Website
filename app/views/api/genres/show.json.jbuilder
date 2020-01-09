json.ignore_nil!
json.extract! @genre, :name
json.books @genre.books do |book|
  json.extract! book, :id, :title, :image
end
