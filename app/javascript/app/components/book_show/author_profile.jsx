import React from 'react';
import { Link, withRouter } from 'react-router-dom';
import Carousel from './book_carousel';
import Book from '../book';

class AuthorProfile extends React.Component {

  renderCarousel() {
    const { book } = this.props;
    if (book && book.author_books.length > 2) {
      return (
        <Carousel book={book} />
        )
    }
    if (book && book.author_books.length === 2) {
      return (
        <div className="carousel-double-image">
          <Book className="carousel-item" book={book.author_books[0]}/>
          <Book className="carousel-item" book={book.author_books[1]}/>
        </div>
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
    if (author) {
      return (
        <div className="about-author-card">
          <section className="about-author-title">
            <h6>About {author.name}</h6>
          </section>
          <section className="about-author-profile">
            <Link style={{textDecoration: 'none'}}to={`/authors/${author.id}`} key={author.id}>
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

  render() {
    return (
      <div>
        { this.renderAuthor() }
      </div>
    );
  }
}

export default AuthorProfile;
