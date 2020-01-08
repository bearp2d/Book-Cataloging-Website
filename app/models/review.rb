class Review < ApplicationRecord
  validates :rating,
            presence: true,
            numericality: { only_integer: true },
            inclusion: { in: (1..5).to_a }
  validates_uniqueness_of :user_id, scope: [:book_id]

  belongs_to :user
  belongs_to :book
end
