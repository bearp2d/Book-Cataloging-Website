class User < ApplicationRecord
  validates :username, format: { with: /\A[a-zA-Z0-9]+\Z/ }

  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  after_create :init_shelves

  attr_accessor :read_shelf, :will_read_shelf, :reading_shelf

  has_many :reviews, dependent: :destroy
  has_many :bookshelves, dependent: :destroy

  has_many :books,
           through: :bookshelves

  private

  def init_shelves
    @read_shelf = Bookshelf.create(user_id: self.id, name: 'Read')
    @will_read_shelf = Bookshelf.create(user_id: self.id, name: 'Want to Read')
    @reading_shelf = Bookshelf.create(user_id: self.id, name: 'Currently Reading')
  end
end
