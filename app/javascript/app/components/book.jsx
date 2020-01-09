import React from 'react';
import { Link } from 'react-router-dom';
import { connect } from 'react-redux';
import { bindActionCreators } from 'redux';
import { withRouter } from 'react-router-dom';

class Book extends React.Component {
  render() {
    const { book } = this.props;
    return (
      <div>
        <Link to={`/books/${book.id}`}>
         <img src={book.image} alt="Book Cover"/>
        </Link>
      </div>
    );
  }
}

export default withRouter(Book);
