// External
import React from 'react';
import { connect } from 'react-redux';
import { bindActionCreators } from 'redux';
import { fetchBook, fetchAuthor } from '../actions/index';

// Components
import AuthorProfile from '../components/book_show/author_profile';
import BookInfo from '../components/book_show/book_info';
import SimilarAuthors from '../components/book_show/similar_authors';
import BookReviews from '../components/book_show/book_reviews';
import SuggestedBooks from '../components/book_show/suggested_books';


class BookShow extends React.Component {
  componentDidMount() {
    this.props.fetchBook(this.props.match.params.id);
    window.scrollTo(0,0);
  }

  componentWillReceiveProps(nextProps) {
    console.log('mount')
    console.log(this.props)
    const currentId = this.props.match.params.id;
    const nextId = nextProps.match.params.id;

    if (currentId !== nextId) {
      this.props.fetchBook(nextId);
      window.scrollTo(0,0);
    }
  }

  componentDidUpdate(prevProps, prevState) {

    if (!this.props.author) {
      this.props.fetchAuthor(this.props.book.author.id);
    }
    if (this.props.book && this.props.author && this.props.book.author.id !== this.props.author.id) {
      this.props.fetchAuthor(this.props.book.author.id)
    }
  }

  render() {
    return (
      <div className="main-content-container">
        <div className="main-content">
          <div className="book-details-container">
            <section className="left-container">
              <BookInfo book={this.props.book} />
              <SuggestedBooks book={this.props.book} author={this.props.author} />
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
