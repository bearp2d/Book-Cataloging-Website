import React from 'react';
import { connect } from 'react-redux';
import { bindActionCreators } from 'redux';
import { Link } from 'react-router-dom';
import { fetchAuthor } from '../actions/index';

import Book from '../components/book';

class AuthorShow extends React.Component {
  componentDidMount() {
    if (!this.props.author) {
      this.props.fetchAuthor(this.props.match.params.id);
    }
  }

  componentDidUpdate(nextProps) {
    if (this.props.match.params.id !== nextProps.match.params.id) {
      this.props.fetchAuthor(nextProps.match.params.id);
    }
  }

  renderAuthor() {
    const { author } = this.props;
    if (author) {
      return (
        <div className="author-information">
          <h1>{author.name}</h1>
          <p>Top Genre: {author.top_genre.name}</p>
        </div>
      );
    }
  }


  renderAuthorBooks() {
    const { author } = this.props;
    if (author) {
      return author.books.map((book) => <Book book={book} key={book.id} />);
    }
  }

  renderSimilarAuthors() {
    const { author } = this.props;
    if (author) {
      return (
        author.similar_authors.map((sa) => {
          return (<p>{sa.name}</p>)
        })
      );
    }
  }


  render() {
      return (
        <div>
         { this.renderAuthor() }
        <div className="author-books-list">
          { this.renderAuthorBooks() }
         </div>
         <h3>Similar Authors:</h3>
          { this.renderSimilarAuthors() }
        </div>
      );
  }
}


function mapStateToProps(state, ownProps) {
  const idFromUrl = parseInt(ownProps.match.params.id, 10);
  const author = state.authors.find((a) => a.id === idFromUrl);
  return { author };
}

function mapDispatchToProps(dispatch) {
  return bindActionCreators({ fetchAuthor }, dispatch);
}

export default connect(mapStateToProps, mapDispatchToProps)(AuthorShow);

