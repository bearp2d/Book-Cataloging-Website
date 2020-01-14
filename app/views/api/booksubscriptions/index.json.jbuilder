json.array! @subscriptions do |subscription|
  json.extract! subscription, :id, :book_id, :bookshelf_id
  json.user subscription.user
end
