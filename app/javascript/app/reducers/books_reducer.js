import { FETCH_BOOKS } from '../actions/index';

const booksReducer = (state = [], action) => {
  switch (action.type) {
    case FETCH_BOOKS:
      return action.payload;
    default:
      return state;
  }
};

export default booksReducer;
