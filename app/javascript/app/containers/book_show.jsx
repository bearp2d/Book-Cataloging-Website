import React from 'react';
import { connect } from 'react-redux';
import { bindActionCreators } from 'redux';
import { fetchBook } from '../actions/index';
// maybe don't need
// import Book from '../components/book'

class BookShow extends React.Component {
  componentDidMount() {
    if (!this.props.book) {
      this.props.fetchBook(this.props.match.params.id);
    }
  }

  componentDidUpdate(nextProps) {
    if (this.props.match.params.id !== nextProps.match.params.id) {
      this.props.fetchBook(nextProps.match.params.id);
    }
  }

  render() {
      return (
        <div>
          <h1>hi</h1>
        </div>
      );
  }
}

// maybe don't need
function mapStateToProps(state, ownProps) {
  const idFromUrl = parseInt(ownProps.match.params.id, 10);
  const book = state.books[idFromUrl];
  return { book };
}

function mapDispatchToProps(dispatch) {
  return bindActionCreators({ fetchBook }, dispatch);
}


export default connect(mapStateToProps, mapDispatchToProps)(BookShow);
