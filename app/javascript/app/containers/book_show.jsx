import React from 'react';
import { connect } from 'react-redux';
import { bindActionCreators } from 'redux';
import { Link } from 'react-router-dom';
import { fetchBook, fetchAuthor } from '../actions/index';
import Carousel from '../components/book_carousel';
import Book from '../components/book';

class BookShow extends React.Component {
  componentDidMount() {
    if (!this.props.book) {
      this.props.fetchBook(this.props.match.params.id);
      // this.props.fetchAuthor(book.author.id);
    }

  }

  componentWillReceiveProps(nextProps) {
    const currentId = this.props.match.params.id;
    const nextId = nextProps.match.params.id;

    if (currentId !== nextId) {
      this.props.fetchBook(nextId);
    }
  }

  componentDidUpdate(prevProps, prevState) {
    if (!this.props.author) {
    this.props.fetchAuthor(this.props.book.author.id);
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

  renderCarousel() {
    const { book } = this.props;
    if (book && book.author_books.length > 2) {
      return (
        <Carousel book={book} />
        )
    }
    if (book && book.author_books.length === 1) {
      return (
        <div className="carousel-single-image">
          <Book className="carousel-item" book={book.author_books[0]}/>
        </div>
      )
    }
    if (book && book.author_books.length <= 1) {
      return (
        <p className="carousel-message">This author doesn't have any other books</p>
      );
    }

  }

  renderAuthor() {
    const { author } = this.props;
    console.log(author);
    if (author) {
      return (
        <div className="about-author-card">
          <section className="about-author-title">
            <h6>About {author.name}</h6>
          </section>
          <section className="about-author-profile">
            <Link to={`/authors/${author.id}`} key={author.id}>
            <img src="https://uploads.scratch.mit.edu/users/avatars/395/5762.png" alt="author"/>
            <h5>{author.name}</h5>
            </Link>
          </section>
          <section className="about-author-description">
            <h6>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Quidem maiores, iusto sapiente? Consequuntur saepe ea corporis accusamus ipsum nam officia eligendi debitis harum est reprehenderit iusto repellendus, fugiat, cupiditate tempora.</h6>
          </section>
          <section className="about-author-books">
              <h6 className="other-books-title">Other Books By {author.name}</h6>
              <div className="carousel">
              { this.renderCarousel() }
            </div>
          </section>
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
    return (

      <div className="main-content-container">
        <div className="main-content">
          <div className="book-details-container">
            <section className="left-container">
              {this.renderBook()}
              <div className="book-reviews">
               { this.renderReviews() }
               </div>
            </section>
            <section className="right-container">
              { this.renderAuthor() }
            </section>
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
  return {
    book,
    author: state.authors[0],
  };
}

function mapDispatchToProps(dispatch) {
  return bindActionCreators({ fetchBook, fetchAuthor }, dispatch);
}


export default connect(mapStateToProps, mapDispatchToProps)(BookShow);
