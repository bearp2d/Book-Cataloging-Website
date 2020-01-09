json.ignore_nil!
json.extract! @user, :id, :username
json.bookshelves @user.bookshelves do |bookshelf|
  json.extract! bookshelf, :name
end
