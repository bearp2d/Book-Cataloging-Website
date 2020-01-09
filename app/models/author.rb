class Author < ApplicationRecord
  validates :name, presence: true

  # attr_accessor :authors

  has_many :books, dependent: :destroy
  has_many :genres,
           through: :books

  def similar_authors
    popular_genre = most_written_genre

    popular_genre.authors.map do |author|
      return author unless author == self
    end
  end

  def most_written_genre
    genres_count = calculate_genres
    genres_count.key(genres_count.values.max)
  end

  private

  def calculate_genres
    @genres_count = Hash.new(0)

    self.genres.each do |genre|
      @genres_count[genre] += 1
    end

    @genres_count
  end
end
