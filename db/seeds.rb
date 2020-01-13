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
User.create(email: 'test@gmail.com', password: 'test123', username: 'testtest', image: 'https://uploads.scratch.mit.edu/users/avatars/395/5762.png')
User.create(email: 'test1@gmail.com', password: 'test222', username: 'AbrahamLincoln', image: 'https://uploads.scratch.mit.edu/users/avatars/395/5762.png')

# Author
Author.create(name: 'Herman Hesse', image: 'https://uploads.scratch.mit.edu/users/avatars/395/5762.png')
Author.create(name: 'Amor Towles', image: 'https://uploads.scratch.mit.edu/users/avatars/395/5762.png')

orwell = Author.create(name: 'George Orwell', image: 'https://uploads.scratch.mit.edu/users/avatars/395/5762.png')
carlos = Author.create(name: 'Carlos Ruiz Zafón', image: 'https://uploads.scratch.mit.edu/users/avatars/395/5762.png')
bukowski = Author.create(name: 'Charles Bukowski', image: 'https://uploads.scratch.mit.edu/users/avatars/395/5762.png')
wong = Author.create(name: 'Jan Wong', image: 'https://uploads.scratch.mit.edu/users/avatars/395/5762.png')
frankyl = Author.create(name: 'Viktor E. Frankyl', image: 'https://uploads.scratch.mit.edu/users/avatars/395/5762.png')
wilde = Author.create(name: 'Oscar Wilde', image: 'https://uploads.scratch.mit.edu/users/avatars/395/5762.png')


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

Book.create(
    title: "1984",
    author: orwell,
    genre: Genre.first,
    description: "Among the seminal texts of the 20th century, Nineteen Eighty-Four is a rare work that grows more haunting as its futuristic purgatory becomes more real. Published in 1949, the book offers political satirist George Orwell's nightmarish vision of a totalitarian, bureaucratic world and one poor stiff's attempt to find individuality. The brilliance of the novel is Orwell's prescience of modern life—the ubiquity of television, the distortion of the language—and his ability to construct such a thorough version of hell.",
    isbn: '2925701',
    image: 'https://images-na.ssl-images-amazon.com/images/I/410ZirPKXKL._SX331_BO1,204,203,200_.jpg'
  )
Book.create(
    title: "Animal Farm",
    author: orwell,
    genre: Genre.first,
    description: "A farm is taken over by its overworked, mistreated animals. With flaming idealism and stirring slogans, they set out to create a paradise of progress, justice, and equality. Thus the stage is set for one of the most telling satiric fables ever penned –a razor-edged fairy tale for grown-ups that records the evolution from revolution against tyranny to a totalitarianism just as terrible.",
    isbn: '2912301',
    image: 'https://d1w7fb2mkkr3kw.cloudfront.net/assets/images/book/lrg/9780/1410/9780141036137.jpg'
  )
Book.create(
    title: "Shadow of the Wind",
    author: carlos,
    genre: Genre.first,
    description: "Barcelona, 1945. Just after the war, a great world city lies in shadow, nursing its wounds, and a boy named Daniel awakes on his eleventh birthday to find that he can no longer remember his mother’s face. To console his only child, Daniel’s widowed father, an antiquarian book dealer, initiates him into the secret of the Cemetery of Forgotten Books, a library tended by Barcelona’s guild of rare-book dealers as a repository for books forgotten by the world, waiting for someone who will care about them again. Daniel’s father coaxes him to choose a volume from the spiraling labyrinth of shelves, one that, it is said, will have a special meaning for him.",
    isbn: '2922261',
    image: 'https://images-na.ssl-images-amazon.com/images/I/51kS6aEjFIL._SX324_BO1,204,203,200_.jpg'
  )
Book.create(
    title: "Ham on Rye",
    author: bukowski,
    genre: Genre.first,
    description: "In what is widely hailed as the best of his many novels, Charles Bukowski details the long, lonely years of his own hardscrabble youth in the raw voice of alter ego Henry Chinaski. From a harrowingly cheerless childhood in Germany through acne-riddled high school years and his adolescent discoveries of alcohol, women, and the Los Angeles Public Library's collection of D. H. Lawrence, 'Ham on Rye' offers a crude, brutal, and savagely funny portrait of an outcast's coming-of-age during the desperate days of the Great Depression.",
    isbn: '1222301',
    image: 'https://i.gr-assets.com/images/S/compressed.photo.goodreads.com/books/1388195001l/38501.jpg'
  )
Book.create(
    title: "Post Office",
    author: bukowski,
    genre: Genre.first,
    description: "'It began as a mistake.' By middle age, Henry Chinaski has lost more than twelve years of his life to the U.S. Postal Service. In a world where his three true, bitter pleasures are women, booze, and racetrack betting, he somehow drags his hangover out of bed every dawn to lug waterlogged mailbags up mud-soaked mountains, outsmart vicious guard dogs, and pray to survive the day-to-day trials of sadistic bosses and certifiable coworkers.",
    isbn: '2322301',
    image: 'https://www.sweetbooks.com/pictures/medium/SKB-12098.jpg'
  )
Book.create(
    title: "Red China Blues: My Long March From Mao to Now",
    author: wong,
    genre: Genre.first,
    description: "Red China Blues is Wong's startling--and ironic--memoir of her rocky six-year romance with Maoism (which crumbled as she became aware of the harsh realities of Chinese communism); her dramatic firsthand account of the devastating Tiananmen Square uprising; and her engaging portrait of the individuals and events she covered as a correspondent in China during the tumultuous era of capitalist reform under Deng Xiaoping. In a frank, captivating, deeply personal narrative she relates the horrors that led to her disillusionment with the worker's paradise. And through the stories of the people--an unhappy young woman who was sold into marriage, Chinas most famous dissident, a doctor who lengthens penises--Wong reveals long-hidden dimensions of the worlds most populous nation.",
    isbn: '4322301',
    image: 'https://images-na.ssl-images-amazon.com/images/I/51rPb4-pAQL.jpg'
  )
Book.create(
    title: "Man's Search for Meaning",
    author: frankyl,
    genre: Genre.first,
    description: "Psychiatrist Viktor Frankl's memoir has riveted generations of readers with its descriptions of life in Nazi death camps and its lessons for spiritual survival. Based on his own experience and the stories of his patients, Frankl argues that we cannot avoid suffering but we can choose how to cope with it, find meaning in it, and move forward with renewed purpose. At the heart of his theory, known as logotherapy, is a conviction that the primary human drive is not pleasure but the pursuit of what we find meaningful. Man's Search for Meaning has become one of the most influential books in America; it continues to inspire us all to find significance in the very act of living.",
    isbn: '7622301',
    image: 'https://images.penguinrandomhouse.com/cover/9780807067994'
  )
Book.create(
    title: "The Picture of Dorian Gray",
    author: wilde,
    genre: Genre.first,
    description: "Written in his distinctively dazzling manner, Oscar Wilde’s story of a fashionable young man who sells his soul for eternal youth and beauty is the author’s most popular work. The tale of Dorian Gray’s moral disintegration caused a scandal when it ﬁrst appeared in 1890, but though Wilde was attacked for the novel’s corrupting inﬂuence, he responded that there is, in fact, “a terrible moral in Dorian Gray.” Just a few years later, the book and the aesthetic/moral dilemma it presented became issues in the trials occasioned by Wilde’s homosexual liaisons, which resulted in his imprisonment. Of Dorian Gray’s relationship to autobiography, Wilde noted in a letter, “Basil Hallward is what I think I am: Lord Henry what the world thinks me: Dorian what I would like to be—in other ages, perhaps.",
    isbn: '5922301',
    image: 'https://www.prestwickhouse.com/ProductImages//ebeb01f5-41da-4f9b-a6cc-763c1610ccff/images/202121.jpg'
  )
Book.create!(
  title: "A Whimsy of the World",
  author: Author.second,
  genre: Genre.first,
  description: "For as long as the town of Aurora could remember, Ellie Watson had been a spirited sort. On her way to the general store to pick up some safety pins for her mother, Ellie could easily take a left instead of a right, and end up on the banks of the Tanner River throwing stones at the silvery shadows of trout. And while getting dressed for the Sunday social, she could suddenly put on her brother’s overalls instead of her new yellow dress – despite her brother being four years older and two inches taller.",
  isbn: '5990301',
  image: 'https://i.gr-assets.com/images/S/compressed.photo.goodreads.com/books/1558396718l/41952927.jpg'
  )


# BookSubscription
BookSubscription.create!(book_id: Book.first.id, bookshelf_id: User.first.bookshelves.last.id)
BookSubscription.create!(book_id: Book.second.id, bookshelf_id: User.first.bookshelves.last.id)

# Review
Review.create!(comment: 'Great book!', rating: 5, suggest: true, user_id: User.first.id, book_id: Book.first.id)
Review.create!(comment: 'Amazing!', rating: 5, suggest: true, user_id: User.second.id, book_id: Book.first.id)


