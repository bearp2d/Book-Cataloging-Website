import React from 'react';
import { connect } from 'react-redux';
import { bindActionCreators } from 'redux';
import { fetchBooks } from '../actions/index';
import Book from '../components/book';

class BookList extends React.Component {
  componentDidMount() {
    this.props.fetchBooks();
  }

  renderBook() {
    const { books } = this.props;
    return books.map((book) => <Book book={book} key={book.id} />);
  }

  render() {
      return (
        <div>
          { this.renderBook() }
        </div>
      );
  }
}

const mapStateToProps = (state) => ({
  books: state.books,
});

function mapDispatchToProps(dispatch) {
  return bindActionCreators({ fetchBooks }, dispatch);
}


export default connect(mapStateToProps, mapDispatchToProps)(BookList);
