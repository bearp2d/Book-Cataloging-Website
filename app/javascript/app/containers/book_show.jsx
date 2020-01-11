import React from 'react';
import { connect } from 'react-redux';
import { bindActionCreators } from 'redux';
import { fetchBook, fetchAuthor } from '../actions/index';


import AuthorProfile from '../components/book_show/author_profile';
import BookInfo from '../components/book_show/book_info';
import SimilarAuthors from '../components/book_show/similar_authors';
import BookReviews from '../components/book_show/book_reviews';


class BookShow extends React.Component {
  componentDidMount() {
    this.props.fetchBook(this.props.match.params.id);
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


  // renderReviews() {
  //   const { book } = this.props;
  //   if (book) {
  //     return book.reviews.map((review) => {
  //       return (
  //         <li key={review.id}>
  //           <p>{review.comment}</p>
  //           <p>({review.user.username})</p>
  //         </li>
  //       );
  //     });
  //   }
  // }

  render() {
    return (
      <div className="main-content-container">
        <div className="main-content">
          <div className="book-details-container">
            <section className="left-container">
              <BookInfo book={this.props.book} />
              <div className="book-reviews">
                <BookReviews book={this.props.book} />
              </div>
            </section>
            <section className="right-container">
              <AuthorProfile book={this.props.book} author={this.props.author}/>
              <div className="similar-author-card">
                <SimilarAuthors author={this.props.author} />
              </div>
            </section>
          </div>
        </div>
      </div>
    );
  }
}

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
