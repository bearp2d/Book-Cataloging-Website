json.ignore_nil!
json.extract! @review, :id, :comment, :rating, :book_id, :user_id, :suggest
json.user do
  json.username @review.user.username
  json.id @review.user.id
end
