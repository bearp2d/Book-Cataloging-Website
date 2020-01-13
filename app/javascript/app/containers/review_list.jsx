import React from 'react';
import { connect } from 'react-redux';
import { bindActionCreators } from 'redux';
import { fetchReviews } from '../actions/index';


class ReviewList extends React.Component {
  componentDidMount() {
    if (!this.props.reviews) {
      this.props.fetchReviews(this.props.match.params.id);
    }
  }

  componentWillReceiveProps(nextProps) {
    // const nextId = nextProps.match.params.id;
    // console.log(nextProps.book[0].id);
    // if (this.props.book.id !== nextProps.book[0].id)
    // {
    //   his.props.fetchReviews(nextProps.book[0].id);
    // }

    // if (currentId !== nextId) {
    //   // this.props.fetchReviews(nextId);
    //   // console.log(this.props)
    // }
  }

  renderReviews() {
    const { books } = this.props;
    return books.map((book) => <Book book={book} key={book.id} />);
  }

  render() {
      return (
        <div>
          <h1>hi reviews</h1>
        </div>
      );
  }
}

function mapStateToProps(state, ownProps) {
  const idFromUrl = parseInt(ownProps.match.params.id, 10)
  const book = state.books.find((b) => b.id === idFromUrl);
  console.log(book);
};

function mapDispatchToProps(dispatch) {
  return bindActionCreators({ fetchReviews }, dispatch);
}


export default connect(mapStateToProps, mapDispatchToProps)(ReviewList);
