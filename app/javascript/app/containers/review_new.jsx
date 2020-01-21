import React from 'react';
import ReactDOM from 'react-dom';
import { connect } from 'react-redux';
import { reduxForm, Field } from 'redux-form';
import { createReview } from '../actions/index';
import StarRatingComponent from 'react-star-rating-component';

class EditStarReview extends React.Component {

  constructor(props) {
    super(props);
    this.state = {
      rating: 1,
      comment: '',
      book_id: this.props.book.id,
    };

    this.handleSubmit = this.handleSubmit.bind(this);
  }

  handleSubmit(event) {
    event.preventDefault();
    this.props.createReview(this.props.book.id, this.state).then(() =>
      this.props.history.push(`/books/${this.props.book.id}`),
    );
  }

  renderField(field) {
    return (
      <div className="form-group">
        <label>{field.label}</label>
        <input
          className="form-control"
          type={field.type}
          {...field.input}
        />
      </div>
    );
  }

  update(field) {
      return (e) => {
        this.setState({[field]: e.target.value});
      };
    }

  onStarClick(nextValue, prevValue, name) {
    this.setState({rating: nextValue});
  }

  render() {
    const { rating } = this.state;

    return (
      <div className='main-content-container'>
        <div className="main-content">
          <form className='review_form' onSubmit={this.handleSubmit}>
            <fieldset className='form-item'>
              <legend className="rating">
        <StarRatingComponent
          name="rate1"
          starCount={5}
          value={rating}
          onStarClick={this.onStarClick.bind(this)}
        />
            </legend>
          </fieldset>
          <fieldset className='form_item'>
            <legend> What did you think?</legend>
            <textarea
              className='review_comment'
              rows='12'
              placeholder='Enter your review'
              maxLength='500'
              onChange={this.update('comment')}
              value={this.state.comment}
              />
          </fieldset>
              <button className="btn btn-dark">Create Review</button>
            </form>
          </div>
        </div>
    );
  }
}

const mapStateToProps = (state) => {
  return {
    book: state.books[0],
  }
}

export default reduxForm({ form: 'newReviewForm' })(
  connect(mapStateToProps, { createReview })(EditStarReview),
);

