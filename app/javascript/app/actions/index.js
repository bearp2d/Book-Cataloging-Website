// BOOK ACTIONS

export const FETCH_BOOKS = 'FETCH_BOOKS';
export const FETCH_BOOK = 'FETCH_BOOK';

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

// AUTHOR ACTIONS

// export const FETCH_AUTHORS = 'FETCH_AUTHORS';
export const FETCH_AUTHOR = 'FETCH_AUTHOR';

export const fetchAuthor = (id) => {
  const promise = fetch(`/api/authors/${id}`)
    .then((response) => response.json());

  return {
    type: FETCH_AUTHOR,
    payload: promise,
  };
};
