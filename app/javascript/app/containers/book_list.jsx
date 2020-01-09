import React from 'react';
import { connect } from 'react-redux';
import { bindActionCreators } from 'redux';

class BookList extends React.Component {
  componentDidMount() {
    console.log('book list mounted')
  }

  render() {
    return (
    <div>
      <h1>Hi from book list</h1>
    </div>
    )
  }
}

export default BookList;
