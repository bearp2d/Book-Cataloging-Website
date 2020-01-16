import React from 'react';
import { Link, withRouter } from 'react-router-dom';

import SelectForm from '../select_form';

class BookInfo extends React.Component {

  renderBook() {
    const { book } = this.props;
    if (book) {
      return (
        <div className="book-info" key={book.id}>
          <div className="book-info-left">
            <img src={book.image} alt="Book Cover" />
            <SelectForm book={book} />
          </div>
          <div className="book-info-right">
            <div className="book-stats">
              <h1>{book.title}</h1>

              <p>{book.review_count} reviews</p>
              <p>Suggested by {book.suggest_percentage}%</p>

              <p>by:</p>
              <Link style={{textDecoration: 'none'}}key={book.author.id} to={`/authors/${book.author.id}`}>
               {book.author.name}
               </Link>
            </div>
            <div className="book-description">
              <p>{book.description}</p>
            </div>
          </div>
        </div>
      );
    }
  }

  render() {
    return (
      <div>
        { this.renderBook() }
      </div>
    );
  }
}

export default BookInfo;
