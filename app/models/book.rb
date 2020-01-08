class Book < ApplicationRecord
  belongs_to :author
  belongs_to :genre

  validates :title, presence: true
  validates :description, presence: true
  validates :isbn, presence: true, uniqueness: true, numericality: { only_integer: true }
  validates :image, presence: true
end
