import React from 'react';
import { connect } from 'react-redux';
import { bindActionCreators } from 'redux';
import { Link } from 'react-router-dom';
import { fetchBook } from '../actions/index';

class BookShow extends React.Component {
  componentDidMount() {
    if (!this.props.book) {
      this.props.fetchBook(this.props.match.params.id);
    }
  }

  renderBook() {
    const { book } = this.props;
    if (book) {
      return (
        <div className="book-info" key={book.id}>
          <div className="book-info-left">
            <img src={book.image} alt="Book Cover" />
            <button className="btn-dark">Add & Rate (todo)</button>
          </div>
          <div className="book-info-right">
            <div className="book-stats">
              <h1>{book.title}</h1>
              <p>Average: Rating: {book.average_rating}</p>
              <p>{book.review_count} reviews</p>
              <p>Suggested by {book.suggest_percentage}%</p>

              <p>by:</p>
              <Link key={book.author.id} to={`/authors/${book.author.id}`}>
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
    // const { book } = this.props;
    return (
      <div className="main-content-container">
        <div className="main-content">

              {this.renderBook()}

           <div className="book-reviews">
            { this.renderReviews() }
            </div>
         </div>
      </div>
    );
  }
}

// maybe don't need
function mapStateToProps(state, ownProps) {
  const idFromUrl = parseInt(ownProps.match.params.id, 10);
  const book = state.books.find((b) => b.id === idFromUrl);
  return { book };
}

function mapDispatchToProps(dispatch) {
  return bindActionCreators({ fetchBook }, dispatch);
}


export default connect(mapStateToProps, mapDispatchToProps)(BookShow);
