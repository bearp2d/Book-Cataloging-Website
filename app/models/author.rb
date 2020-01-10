class Author < ApplicationRecord
  validates :name, presence: true

  has_many :books, dependent: :destroy
  has_many :genres,
           through: :books

  def similar_authors
    popular_genre = top_genre

    authors = []
    popular_genre.authors.each do |author|
      authors << author unless author == self
    end

    authors
  end

  def top_genre
    genres_count = calculate_genres
    genres_count.key(genres_count.values.max)
  end

  def author_rating
    ratings.any? ? (ratings.reduce(:+) / ((ratings.count * 100.0) / 100.0)).round(2) : 'none'
  end

  private

  def calculate_genres
    @genres_count = Hash.new(0)

    self.genres.each do |genre|
      @genres_count[genre] += 1
    end

    @genres_count
  end

  def ratings
    self.books.map(&:average_rating)
  end
end
