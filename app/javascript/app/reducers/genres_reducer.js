import { FETCH_GENRES } from '../actions/index';

const genresReducer = (state = [], action) => {
  Object.freeze(state);
  switch (action.type) {
    case FETCH_GENRES:
      return action.payload;
    default:
      return state;
  }
};

export default genresReducer;
