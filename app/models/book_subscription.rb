class BookSubscription < ApplicationRecord
  belongs_to :book
  belongs_to :bookshelf

  validates_uniqueness_of :book_id, scope: [:bookshelf_id]
end
