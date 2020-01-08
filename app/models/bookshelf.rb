class Bookshelf < ApplicationRecord
  validates :name, presence: true, inclusion: { in: ['Want to read', 'Currently Reading', 'Read'] }

  belongs_to :user

  has_many :book_subscriptions, dependent: :destroy
  has_many :books,
           through: :book_subscriptions
end
