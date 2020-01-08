class Author < ApplicationRecord
  has_many :books, dependent: :destroy
  has_many :genres,
           through: :books
  validates :first_name, presence: true
  validates :last_name, presence: true
end
