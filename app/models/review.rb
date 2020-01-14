class Review < ApplicationRecord
  validates :rating,
            presence: true

  validates_uniqueness_of :user_id, scope: [:book_id]

  belongs_to :user
  belongs_to :book
end
