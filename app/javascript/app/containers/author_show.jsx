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

  componentWillReceiveProps(nextProps) {
    const currentId = this.props.match.params.id;
    const nextId = nextProps.match.params.id;

    if (currentId !== nextId) {
      this.props.fetchAuthor(nextId);
    }
  }

  renderAuthor() {
    const { author } = this.props;
    if (author) {
      return (
        <div className="author-info">
          <div className="author-image">
            <img src={author.image} alt=""/>
          </div>
          <div className="author-description">
            <h1>{author.name}</h1>
            <p id='top-genre'>Top Genre: {author.top_genre.name}</p>
            <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Sunt provident autem ea fugiat natus debitis deserunt deleniti molestias, perspiciatis excepturi consectetur culpa voluptatibus laboriosam! Iure quia aperiam asperiores provident delectus quidem. Veritatis magnam dolorem ipsa explicabo dolores dolor rerum, expedita et quaerat voluptas nihil deserunt doloribus tenetur vero alias minima sint officia optio inventore, aliquid. Cumque commodi, nesciunt veniam rem ipsam possimus ducimus. Sit quod odit non eveniet corporis nemo ratione asperiores suscipit aspernatur adipisci accusantium tempora nihil, molestiae obcaecati harum quae labore vitae amet consectetur aperiam! Inventore ea, fugiat, sed at doloribus fuga enim officia praesentium velit beatae libero.
            </p>
          </div>
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
          return (
            <Link key={sa.id} to={`/authors/${sa.id}`}>
              <p>{sa.name}</p>
            </Link>
            );
        })
      );
    }
  }

  render() {

      return (
        <div className='main-content-container'>
          <div className="main-content">
            { this.renderAuthor() }
            <div className="extended-author-info">
           <div className="similar-authors">
           <h3>Similar Authors:</h3>
            { this.renderSimilarAuthors() }
            </div>
          <div className="author-books-list">
            { this.renderAuthorBooks() }
           </div>
            </div>
          </div>
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
