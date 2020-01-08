class Book < ApplicationRecord
  belongs_to :author
  belongs_to :genre

  has_many :reviews, dependent: :destroy
  has_many :book_subscriptions, dependent: :destroy
  has_many :bookshelves,
           through: :book_subscriptions

  validates :title, presence: true
  validates :description, presence: true
  validates :isbn, presence: true, uniqueness: true, numericality: { only_integer: true }
  validates :image, presence: true

  def self.full_name(first_name, last_name)
    first_name + '' + last_name
  end
end
