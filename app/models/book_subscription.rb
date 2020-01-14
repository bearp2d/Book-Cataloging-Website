class BookSubscription < ApplicationRecord
  belongs_to :book, optional: true
  belongs_to :bookshelf, optional: true

  has_one :user,
          through: :bookshelf

  validates_uniqueness_of :book_id, scope: [:bookshelf_id]
end
