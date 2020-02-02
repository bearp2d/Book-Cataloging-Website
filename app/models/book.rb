class Book < ApplicationRecord
  validates :title, presence: true
  validates :description, presence: true
  validates :image, presence: true

  belongs_to :author
  belongs_to :genre

  has_many :reviews, dependent: :destroy
  has_many :book_subscriptions, dependent: :destroy
  has_many :bookshelves,
           through: :book_subscriptions

  def average_rating
    ratings.count < 1 ? 0 : (ratings.reduce(:+) / ((ratings.count * 100.0).round / 100.0)).round(2)
  end

  def review_count
    reviews.count
  end

  # all books from book's author
  def other_books
    author.books.where.not(id: self)
  end

  # suggested books from same genre
  def suggested_books
    genre.books.distinct.limit(6)
  end

  private

  def ratings
    reviews.where(id: self)
  end
end
