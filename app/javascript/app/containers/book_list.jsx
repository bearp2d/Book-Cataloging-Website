import React from 'react';
import { connect } from 'react-redux';
import { bindActionCreators } from 'redux';
import { fetchBooks, fetchShelves } from '../actions/index';
import Jumbotron from 'react-bootstrap/Jumbotron'
import { Link } from 'react-router-dom';

import Book from '../components/book';


class BookList extends React.Component {
  componentDidMount() {
    this.props.fetchBooks();

    if (this.props.user !== null) {
    this.props.fetchShelves(this.props.user);
    }
  }

  renderBook() {
    const { books } = this.props;
    return books.map((book) => <Book book={book} key={book.id} />);
  }

  renderJumbotron() {
    if (this.props.user) {
      return (
      <Jumbotron className='home-header-user'>
        <h1>Welcome Back!</h1>
        <p>
          What are you reading today?
        </p>
        <Link to={`/users/${this.props.user}/bookshelves`}>
          <button className='btn btn-dark shelf-button'>My Shelves</button>
        </Link>
      </Jumbotron>
      )
    } else {
      return (
      <Jumbotron className='home-header'>
        <h1>Welcome to GreatReads!</h1>
        <p>
          Sign up to discover your next favorite book.
        </p>
      </Jumbotron>
      )
    }
  }

  render() {
      return (
        <div className="main-content-container">
          <div className="main-content">
            <div className="user-shelves">
              { this.renderJumbotron() }
            </div>
            <h1 id='book-list-title'><i class="fas fa-book-reader"></i></h1>
           <div className='home-book-list'>
            { this.renderBook() }
           </div>
           </div>
        </div>
      );
  }
}

const mapStateToProps = (state) => ({
  books: state.books,
  user: state.user,
  shelves: state.userBookshelves,
});

function mapDispatchToProps(dispatch) {
  return bindActionCreators({ fetchBooks, fetchShelves }, dispatch);
}


export default connect(mapStateToProps, mapDispatchToProps)(BookList);
