import { combineReducers } from 'redux';
import { reducer as formReducer } from 'redux-form';
import booksReducer from './books_reducer';
import authorsReducer from './authors_reducer';
import reviewsReducer from './reviews_reducer';
import userReducer from './user_reducer';
import userBookshelvesReducer from './user_bookshelves_reducer';
import genresReducer from './genres_reducer';

const rootReducer = combineReducers({
  books: booksReducer,
  authors: authorsReducer,
  reviews: reviewsReducer,
  form: formReducer,
  user: userReducer,
  userBookshelves: userBookshelvesReducer,
  genres: genresReducer,
});

export default rootReducer;
