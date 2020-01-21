import React from 'react';
import ReactDOM from 'react-dom';
import StarRatingComponent from 'react-star-rating-component';

class BookRating extends React.Component {

  constructor() {
      super();

      this.state = {
        rating: 1
      };
    }

    componentDidMount() {
      this.setState({rating: this.props.rating})
    }

    componentWillReceiveProps(nextProps) {
      this.setState({rating: nextProps.rating})
    }

  render() {
    const { rating } = this.state;

    return (
      <div>
        <StarRatingComponent
          name="rate2"
          editing={false}
          renderStarIcon={() => <i class="fas fa-star"></i>}
          starCount={5}
          value={this.state.rating}
        />
      </div>
    );
  }
}

export default BookRating;
