import { FETCH_BOOKS, FETCH_BOOK } from '../actions/index';

const booksReducer = (state = [], action) => {
  Object.freeze(state);
  switch (action.type) {
    case FETCH_BOOKS:
      return action.payload;
    case FETCH_BOOK:
      return [action.payload];
    default:
      return state;
  }
};

export default booksReducer;
