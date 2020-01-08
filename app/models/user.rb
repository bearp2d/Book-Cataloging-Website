class User < ApplicationRecord
  validates :username, format: { with: /\A[a-zA-Z0-9]+\Z/ }

  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  has_many :reviews, dependent: :destroy
  has_many :bookshelves, dependent: :destroy
  has_many :book_subscriptions,
           through: :bookshelves
end
