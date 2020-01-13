import { FETCH_REVIEWS } from '../actions/index';

const reviewsReducer = (state = [], action) => {
  Object.freeze(state);
  switch (action.type) {
    case FETCH_REVIEWS:
      return action.payload;
    default:
      return state;
  }
};

export default reviewsReducer;
