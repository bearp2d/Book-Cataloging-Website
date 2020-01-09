import { combineReducers } from 'redux';
import booksReducer from './books_reducer';
import authorsReducer from './authors_reducer';

const rootReducer = combineReducers({
  books: booksReducer,
  authors: authorsReducer,
});

export default rootReducer;
