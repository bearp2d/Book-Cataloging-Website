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
Book.create(
    title: "Rules of Civility",
    author: Author.second,
    genre: Genre.first,
    description: 'On the last night of 1937, twenty-five-year-old Katey Kontent is in a second-rate Greenwich Village jazz bar with her boardinghouse roommate stretching three dollars as far as it will go when Tinker Grey, a handsome banker with royal blue eyes and a tempered smile, happens to sit at the neighboring table. This chance encounter and its startling consequences propel Katey on a yearlong journey from a Wall Street secretarial pool toward the upper echelons of New York society and the executive suites of Condé Nast--rarefied environs where she will have little to rely upon other than a bracing wit and her own brand of cool nerve.',
    isbn: '0670022691',
    image: 'https://images-na.ssl-images-amazon.com/images/I/91fWfmE1GzL.jpg'
  )
Book.create(
    title: "You Have Arrived at Your Destination",
    author: Author.second,
    genre: Genre.first,
    description: 'When Sam’s wife first tells him about Vitek, a twenty-first-century fertility lab, he sees it as the natural next step in trying to help their future child get a “leg up” in a competitive world. But the more Sam considers the lives that his child could lead, the more he begins to question his own relationships and the choices he has made in his life.',
    isbn: '9781732',
    image: 'https://images-na.ssl-images-amazon.com/images/I/51JQAqbonaL.jpg'
  )
Book.create(
    title: "Eve in Hollywood",
    author: Author.second,
    genre: Genre.first,
    description: 'In this chain of six richly detailed and atmospheric stories, each told from a different perspective, Towles unfolds the events that take Eve to the heart of Old Hollywood. Beginning in the dining car of the Golden State Limited in September 1938, we follow Eve to the elegant rooms of the Beverly Hills Hotel, the fabled tables of Antonio’s, the amusement parks on the Santa Monica piers, the afro-Cuban dance clubs of Central Avenue, and ultimately the set of Gone with The Wind.',
    isbn: '9781101',
    image: 'https://i.gr-assets.com/images/S/compressed.photo.goodreads.com/books/1369321477l/17972257.jpg'
  )
Book.create(
    title: "Narcissus and Goldmund",
    author: Author.first,
    genre: Genre.first,
    description: "Narcissus and Goldmund tells the story of two medieval men whose characters are diametrically opposite: Narcissus, an ascetic monk firm in his religious commitment, and Goldmund, a romantic youth hungry for knowledge and worldly experience. First published in 1930, Hesse's novel remains a moving and pointed exploration of the conflict between the life of the spirit and the life of the flesh. It is a theme that transcends all time.",
    isbn: '9721301',
    image: 'https://images-na.ssl-images-amazon.com/images/I/81wBIEW0APL.jpg'
  )
Book.create(
    title: "A Whimsy of the World",
    author: Author.last,
    genre: Genre.first,
    description: "For as long as the town of Aurora could remember, Ellie Watson had been a spirited sort. On her way to the general store to pick up some safety pins for her mother, Ellie could easily take a left instead of a right, and end up on the banks of the Tanner River throwing stones at the silvery shadows of trout. And while getting dressed for the Sunday social, she could suddenly put on her brother’s overalls instead of her new yellow dress – despite her brother being four years older and two inches taller.",
    isbn: '2922301',
    image: 'https://i.gr-assets.com/images/S/compressed.photo.goodreads.com/books/1558396718l/41952927.jpg'
  )

# BookSubscription
BookSubscription.create!(book_id: Book.first.id, bookshelf_id: User.first.bookshelves.last.id)
BookSubscription.create!(book_id: Book.second.id, bookshelf_id: User.first.bookshelves.last.id)

# Review
Review.create!(comment: 'Great book!', rating: 5, suggest: true, user_id: User.first.id, book_id: Book.first.id)
Review.create!(comment: 'Amazing!', rating: 5, suggest: true, user_id: User.second.id, book_id: Book.first.id)


