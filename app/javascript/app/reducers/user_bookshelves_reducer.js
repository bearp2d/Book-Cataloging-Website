import { FETCH_SHELVES } from '../actions/index';

const userBookshelvesReducer = (state = [], action) => {
  Object.freeze(state);
  switch (action.type) {
    case FETCH_SHELVES:
      return action.payload;
    default:
      return state;
  }
};

export default userBookshelvesReducer;
