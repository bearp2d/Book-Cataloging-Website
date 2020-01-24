import React from 'react';
import { connect } from 'react-redux';
import { bindActionCreators } from 'redux';
import { fetchBooks, fetchShelves } from '../actions/index';
import Jumbotron from 'react-bootstrap/Jumbotron'
import { Link } from 'react-router-dom';

import Book from '../components/book';


class BookList extends React.Component {


    constructor(props) {
      super(props);
      this.state = {
        selectedGenre: 'all'
      };
    };


  componentDidMount() {
    this.props.fetchBooks();

    if (this.props.user !== null) {
    this.props.fetchShelves(this.props.user);
    }
  }

  renderAllBooks() {
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

  setSelected(genre) {
    if (this.state.selectedGenre === genre) {
      return 'genre-selected genre-title';
    }
    return 'genre-title'
  }

  handleClick(genre) {
    this.setState({selectedGenre: genre})
  }

  renderGenreBooks(genre) {
    const { books } = this.props;
    if (genre === 'all') {
      return books.map((book) => <Book book={book} key={book.id} />);
    }

    let genreBooks = books.filter((book) => book.genre.name === genre);
    return genreBooks.map((book) => <Book book={book} key={book.id} />)
  }

  render() {
      return (

        <div>
          { this.renderJumbotron() }
        <div className="main-content-container">
          <div className="main-content">

            <ul className="genre-list">
              <li onClick={() => this.handleClick('all')} className={this.setSelected('all')}>All Genres</li>
              <li onClick={() => this.handleClick('fantasy')} className={this.setSelected('fantasy')}>Fantasy</li>
              <li id='book-list-title'><i className="fas fa-book-reader"></i></li>
              <li onClick={() => this.handleClick('fiction')} className={this.setSelected('fiction')}>Fiction</li>
              <li onClick={() => this.handleClick('non-fiction')} className={this.setSelected('non-fiction')}>Non-Fiction</li>
            </ul>
            <div className="books-list">

                  { this.renderGenreBooks(this.state.selectedGenre) }
            </div>
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
