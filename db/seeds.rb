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
Bookshelf.destroy_all
BookSubscription.destroy_all
Review.destroy_all

# User
User.create(email: 'test@gmail.com', password: 'test123', username: 'testtest')
User.create(email: 'test1@gmail.com', password: 'test222', username: 'AbrahamLincoln')

# Author
Author.create(name: 'Herman Hesse')
Author.create(name: 'Amor Towles')

# Genre
Genre.create(name: 'fiction')
Genre.create(name: 'non-fiction')
Genre.create(name: 'fantasy')

# Book
Book.create(
    title: 'Siddhartha',
    author_id: Author.first.id,
    genre_id: Genre.first.id,
    description: 'Siddhartha is a novel by Hermann Hesse that deals with the spiritual journey of self-discovery of a man named Siddhartha during the time of the Gautama Buddha.',
    isbn: '0553208845',
    image: 'https://images-na.ssl-images-amazon.com/images/I/51ViESDNfIL._SX331_BO1,204,203,200_.jpg'
  )
Book.create(
    title: "A Gentleman in Moscow",
    author: Author.second,
    genre: Genre.first,
    description: 'In 1922, Count Alexander Rostov is deemed an unrepentant aristocrat by a Bolshevik tribunal, and is sentenced to house arrest in the Metropol, a grand hotel across the street from the Kremlin. Rostov, an indomitable man of erudition and wit, has never worked a day in his life, and must now live in an attic room while some of the most tumultuous decades in Russian history are unfolding outside the hotels doors. Unexpectedly, his reduced circumstances provide him entry into a much larger world of emotional discovery.',
    isbn: '0670026190',
    image: 'https://prodimage.images-bn.com/pimages/9780143110439_p0_v1_s550x406.jpg'
  )

# BookShelf
Bookshelf.create!(user_id: User.first.id, name: 'Want to read')
Bookshelf.create!(user_id: User.first.id, name: 'Currently Reading')
Bookshelf.create!(user_id: User.first.id, name: 'Read')


# BookSubscription
BookSubscription.create!(book_id: Book.first.id, bookshelf_id: Bookshelf.last.id)

# Review
Review.create!(comment: 'Great book!', rating: 5, suggest: true, user_id: User.first.id, book_id: Book.first.id)
Review.create!(comment: 'Amazing!', rating: 5, suggest: true, user_id: User.second.id, book_id: Book.first.id)


