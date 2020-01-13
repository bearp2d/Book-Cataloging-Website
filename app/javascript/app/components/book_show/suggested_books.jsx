import React from 'react';
import Book from '../book';

class SuggestedBooks extends React.Component {

  renderSuggestedBooks() {
    const { book, author } = this.props;
    if (book) {
      return (
        book.suggested_books.map((sb) => {
          return (
            <div className='suggested-book'>
              <Book book={sb} author={author} />
            </div>
          );
        })
      );
    }
  }

  render() {
    return (
      <div className='suggested-books-container'>
        <div className='suggested-books-title'>
          <h6>Suggested Books</h6>
        </div>
        <div className="suggested-books">
          { this.renderSuggestedBooks() }
         </div>
      </div>
    );
  }
}

export default SuggestedBooks;
