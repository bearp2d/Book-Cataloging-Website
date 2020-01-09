import { FETCH_AUTHOR } from '../actions/index';

const authorsReducer = (state = [], action) => {
  Object.freeze(state);
  switch (action.type) {
    case FETCH_AUTHOR:
      return [action.payload];
    default:
      return state;
  }
};

export default authorsReducer;
