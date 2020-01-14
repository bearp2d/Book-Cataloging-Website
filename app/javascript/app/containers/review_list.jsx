import React from 'react';
import { connect } from 'react-redux';
import { bindActionCreators } from 'redux';
import { fetchReviews } from '../actions/index';


class ReviewList extends React.Component {
  componentDidMount() {
    if (!this.props.reviews) {

      // this.props.fetchReviews(this.props.match.params.id);
    }
  }

  componentWillReceiveProps(nextProps) {

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
  return {
    reviews: state.reviews,
  };
}

function mapDispatchToProps(dispatch) {
  return bindActionCreators({ fetchReviews }, dispatch);
}


export default connect(mapStateToProps, mapDispatchToProps)(ReviewList);
