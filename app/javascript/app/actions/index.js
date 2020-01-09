export const FETCH_BOOKS = 'FETCH_BOOKS';
export const FETCH_BOOK = 'FETCH_BOOK';

// temporary ROOT URL
const ROOT_URL = 'localhost:3000';

export const fetchBooks = () => {
  const promise = fetch('/api/books')
    .then((response) => response.json());

  return {
    type: FETCH_BOOKS,
    payload: promise,
  };
};

export const fetchBook = (id) => {
  const promise = fetch(`/api/books/${id}`)
    .then((response) => response.json());

  return {
    type: FETCH_BOOK,
    payload: promise,
  };
};
