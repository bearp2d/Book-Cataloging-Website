import { combineReducers } from 'redux';
import { reducer as formReducer } from 'redux-form';
import booksReducer from './books_reducer';
import authorsReducer from './authors_reducer';
import reviewsReducer from './reviews_reducer';


const rootReducer = combineReducers({
  books: booksReducer,
  authors: authorsReducer,
  reviews: reviewsReducer,
  form: formReducer,
});

export default rootReducer;
