class Author < ApplicationRecord
  validates :name, presence: true

  has_many :books, dependent: :destroy
  has_many :genres,
           through: :books
end
