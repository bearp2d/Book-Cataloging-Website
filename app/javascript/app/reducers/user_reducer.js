import { FETCH_USER } from '../actions/index';

const userReducer = (state = [], action) => {
  Object.freeze(state);
  switch (action.type) {
    case FETCH_USER:
      return action.payload;
    default:
      return state;
  }
};

export default userReducer;
