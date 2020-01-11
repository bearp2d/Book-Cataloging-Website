import React from 'react';
import { Link, withRouter } from 'react-router-dom';

class BookReviews extends React.Component {

  renderReviews() {
    const { book } = this.props;
    if (book) {
      return book.reviews.map((review) => {
        return (
          <li key={review.id}>
            <p>{review.comment}</p>
            <p>({review.user.username})</p>
          </li>
        );
      });
    }
  }


  render() {
    return (
      <div>
        { this.renderReviews() }
      </div>
    );
  }
}

export default BookReviews;
