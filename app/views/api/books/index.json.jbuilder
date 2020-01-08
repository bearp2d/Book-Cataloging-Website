json.array! @books do |book|
  json.extract! book, :id, :title, :author_id, :genre_id, :image
end
