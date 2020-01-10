class Book < ApplicationRecord
  validates :title, presence: true
  validates :description, presence: true
  validates :isbn, presence: true, uniqueness: true, numericality: { only_integer: true }
  validates :image, presence: true

  belongs_to :author
  belongs_to :genre

  has_many :reviews, dependent: :destroy
  has_many :book_subscriptions, dependent: :destroy
  has_many :bookshelves,
           through: :book_subscriptions

  def average_rating
    (ratings.reduce(:+) / ((ratings.count * 100.0).round / 100.0)).round(2)
  end

  private

  def ratings
    self.reviews.map(&:rating)
  end
end
