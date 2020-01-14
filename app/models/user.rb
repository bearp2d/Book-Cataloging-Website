class User < ApplicationRecord
  validates :username, format: { with: /\A[a-zA-Z0-9]+\Z/ }, uniqueness: true

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
    @read_shelf = Bookshelf.create(user_id: self.id, name: 'read')
    @reading_shelf = Bookshelf.create(user_id: self.id, name: 'current')
    @will_read_shelf = Bookshelf.create(user_id: self.id, name: 'want')
  end
end
