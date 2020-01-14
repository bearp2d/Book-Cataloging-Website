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

// Review Actions
export const FETCH_REVIEWS = 'FETCH_REVIEWS';

export const fetchReviews = (bookId) => {
  const promise = fetch(`/api/books/${bookId}/reviews`)
    .then((response) => response.json());

  return {
    type: FETCH_REVIEWS,
    payload: promise,
  };
};

export const CREATE_REVIEW = 'CREATE_REVIEW';

export const createReview = (bookId, content) => {
  const url = `/api/books/${bookId}/reviews`;
  const body = { content };
  const csrfToken = document.querySelector('meta[name="csrf-token"]').attributes.content.value;
  const promise = fetch(url, {
    method: 'POST',
    headers: {
      'Accept': 'application/json',
      'Content-Type': 'application/json',
      'X-CSRF-Token': csrfToken,
    },
    credentials: 'same-origin',
    body: JSON.stringify(body.content),
  }).then((r) => r.json());

  return {
    type: CREATE_REVIEW,
    payload: promise,
  };
};
