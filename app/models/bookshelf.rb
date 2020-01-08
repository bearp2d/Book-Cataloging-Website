class Bookshelf < ApplicationRecord
  belongs_to :user

  has_many :book_subscriptions, dependent: :destroy
  has_many :books,
           through: :book_subscriptions

  validates :name, presence: true, acceptance: { accept: ['Want to read', 'Currently Reading', 'Read'] }
end
