import React from 'react';
import { Switch, Route, Redirect } from 'react-router-dom';

import BookList from '../containers/book_list';
import BookShow from '../containers/book_show';
import AuthorShow from '../containers/author_show';
import ReviewNew from '../containers/review_new';
import UserNew from '../containers/user_new';


const App = (props) => {
  return (
    <div className="app">
      <Switch>
        <Route path="/" exact component={BookList} />
        <Route exact path="/books/:id" component={BookShow} />
        <Route path="/authors/:id" exact component={AuthorShow} />
        <Route path="/reviews/new" exact component={ReviewNew} />
        <Route path="/users/sign_up" exact compoent={UserNew} />
      </Switch>
    </div>
  );
};

export default App;
