import { combineReducers } from 'redux';
import booksReducer from './books_reducer';
import authorsReducer from './authors_reducer';
import reviewsReducer from './reviews_reducer';

const rootReducer = combineReducers({
  books: booksReducer,
  authors: authorsReducer,
  reviews: reviewsReducer,
});

export default rootReducer;
