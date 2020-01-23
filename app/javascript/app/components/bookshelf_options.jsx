import React from 'react';
import BookRating from './book_show/star_rating';
import Book from './book';

export default class BookshelfOptions extends React.Component {
  constructor(props) {
    super(props);
  }

  renderTableBody(books) {
    if (books) {

      return books.map((book) => {
        return (
          <tr className='bookshelf-item'>
           <td id='book'><Book book={book}/></td>
           <td>{book.title}</td>
           <td>{book.author.name}</td>
           <td><BookRating rating={book.average_rating} /></td>
           </tr>
          )
      })
    }
  }

  render() {
    if (this.props.selectedShelf) {
      const { selectedShelf } = this.props
    return (
      <div>
        <h4 id="shelf-name">{this.props.shelfName}</h4>
        <table className='bookshelf-table'>
          <thead>
            <tr>
              <th>Cover</th>
              <th>Title</th>
              <th>Author</th>
              <th>Avg Rating</th>
            </tr>
          </thead>
          <tbody>
            { this.renderTableBody(selectedShelf.books) }
          </tbody>
        </table>
      </div>
    );
  }
 }
}
