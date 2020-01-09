// external modules
import React from 'react';
import ReactDOM from 'react-dom';
import { Provider } from 'react-redux';
import { BrowserRouter as Router, Route, Redirect, Switch }
  from 'react-router-dom';
import { createHistory as history } from 'history';

// internal modules
import store from './components/store';
// import App from './components/app';
import BookList from './containers/book_list';
import BookShow from './containers/book_show';
import AuthorShow from './containers/author_show';


ReactDOM.render(
  <Provider store={store}>
    <Router history={history}>
      <Switch>
        <Route path="/" exact component={BookList} />
        <Route path="/books/:id" exact component={BookShow} />
        <Route path="/authors/:id" exact component={AuthorShow} />
      </Switch>
    </Router>
  </Provider>,
  document.getElementById('root'),
);
