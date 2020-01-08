# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

User.destroy_all
Author.destroy_all
Genre.destroy_all
Book.destroy_all

# User
User.create(email: 'test@gmail.com', password: 'test123', username: 'test_test')

# Author
Author.create(first_name: 'Herman', last_name: 'Hesse')

# Genre
Genre.create(name: 'fiction')
Genre.create(name: 'non-fiction')
Genre.create(name: 'fantasy')

# Book
Book.create!(
    title: 'Siddhartha',
    author_id: Author.first.id,
    genre_id: Genre.first.id,
    description: 'Siddhartha is a novel by Hermann Hesse that deals with the spiritual journey of self-discovery of a man named Siddhartha during the time of the Gautama Buddha.',
    isbn: '0553208845',
    image: 'https://images-na.ssl-images-amazon.com/images/I/51ViESDNfIL._SX331_BO1,204,203,200_.jpg'
  )


