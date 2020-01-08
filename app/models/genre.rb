class Genre < ApplicationRecord
  has_many :books, dependent: :destroy
  has_many :authors,
           through: :books
end
