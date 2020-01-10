require 'byebug'
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
    ratings.count < 1 ? 'none' : (ratings.reduce(:+) / ((ratings.count * 100.0).round / 100.0)).round(2)
  end

  def review_count
    reviews.count
  end

  def suggest_percentage
    all_suggestions_count < 1 ? 'none' : ((suggest_true_count.to_f / all_suggestions_count.to_f) * 100).round
  end

  private

  def all_suggestions_count
    reviews.map(&:suggest).count
  end

  def suggest_true_count
    suggestions = reviews.map(&:suggest)
    suggestions.select {|s| s == true}.count
  end

  def ratings
    self.reviews.map(&:rating)
  end
end
