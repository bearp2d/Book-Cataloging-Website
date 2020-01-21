import React from 'react';
import { Link, withRouter } from 'react-router-dom';
import ShelfForm from '../../containers/shelf_form';
import BookRating from './star_rating';

class BookInfo extends React.Component {

  renderBook() {
    const { book } = this.props;
    if (book) {
      return (
        <div className="book-info" key={book.id}>
          <div className="book-info-left">
            <img src={book.image} alt="Book Cover" />
            <ShelfForm book={book} />
          </div>
          <div className="book-info-right">
            <div className="book-stats">
              <h1>{book.title}</h1>
              <Link style={{textDecoration: 'none'}}key={book.author.id} to={`/authors/${book.author.id}`}>
               {book.author.name}
               </Link>
               <div className="book-rating">
               <BookRating rating={book.average_rating} />
               <p>({book.review_count} Reviews)</p>
               </div>
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
