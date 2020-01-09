import { logger } from 'redux-logger';
import { createStore, applyMiddleware, compose } from 'redux';
import reduxPromise from 'redux-promise';
// import rootReducer from '../reducers/rootReducer';

const composeEnhancers = window.__REDUX_DEVTOOLS_EXTENSION_COMPOSE__ || compose;
const middlewares = composeEnhancers(applyMiddleware(logger, reduxPromise));

const store = createStore(rootReducer, {}, middlewares);

export default store;
