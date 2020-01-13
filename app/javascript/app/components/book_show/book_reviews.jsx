import React from 'react';
import { Link, withRouter } from 'react-router-dom';

class BookReviews extends React.Component {

  calculateStarRating(rating) {
    return [...Array(rating)].map((e, i) => <i className="fas fa-star"></i>);
  }

  renderReviews() {
    const { book } = this.props;
    if (book && book.reviews.length > 0) {
      return book.reviews.map((review) => {
        return (
          <div className="book-review" key={book.id}>
            <img src={review.user.image} />
            <div className="user-info">
              <div className="rating">
                <h2>{review.user.username}</h2>
                <p>{this.calculateStarRating(review.rating)}</p>
              </div>
              <div className="comment">
                <p>{review.comment}</p>
              </div>
            </div>

          </div>
        );
      });
    }
    if (book && book.reviews.length === 0) {
      return (
        <p className="empty-review-message">There are no reviews for {book.title} yet... ☹️</p>
      );
    }
  }

  render() {
    return (
      <div className='book-reviews-container'>
        <div className="book-reviews-title">
          <h6>Community Reviews</h6>
        </div>
        <div className="book-reviews">
          { this.renderReviews() }
        </div>
      </div>
    );
  }
}

export default BookReviews;
