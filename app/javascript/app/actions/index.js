export const FETCH_BOOKS = 'FETCH_BOOKS';

// sample data
const books = { books: [
    { title: 'Siddhartha',
    author_id: 1,
    genre_id: 1,
    description: 'Siddhartha is a novel by Hermann Hesse that deals with the spiritual journey of self-discovery of a man named Siddhartha during the time of the Gautama Buddha.',
    isbn: '0553208845',
    image: 'https://images-na.ssl-images-amazon.com/images/I/51ViESDNfIL._SX331_BO1,204,203,200_.jpg'
    },

    { title: "A Gentleman in Moscow",
    author: 2,
    genre: 2,
    description: 'In 1922, Count Alexander Rostov is deemed an unrepentant aristocrat by a Bolshevik tribunal, and is sentenced to house arrest in the Metropol, a grand hotel across the street from the Kremlin. Rostov, an indomitable man of erudition and wit, has never worked a day in his life, and must now live in an attic room while some of the most tumultuous decades in Russian history are unfolding outside the hotels doors. Unexpectedly, his reduced circumstances provide him entry into a much larger world of emotional discovery.',
    isbn: '0670026190',
    image: 'https://prodimage.images-bn.com/pimages/9780143110439_p0_v1_s550x406.jpg'

    }
  ]
}

export const fetchBooks = () => {
  return {
    type: FETCH_BOOKS,
    payload: books
  }
}
