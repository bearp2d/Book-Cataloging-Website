import React from 'react';
import Select from 'react-select';
import { connect } from 'react-redux';
import { bindActionCreators } from 'redux';
import { createSubscription, fetchShelves } from '../actions/index';
import ShelfButton from '../components/shelf_button';

const options = [
  { value: 'read', label: 'Read' },
  { value: 'current', label: 'Currently Reading' },
  { value: 'want', label: 'Want to Read' },
];

class SelectForm extends React.Component {
  constructor(props) {
    super(props);
    this.state = {
      selectedOption: null,
      selectedShelfId: null,
    };

    this.handleSubmit = this.handleSubmit.bind(this);
  }

  fetchShelfId(selectedOption) {
    this.props.shelves.map((shelf) => {
      if (Object.keys(shelf)[0] === selectedOption.value) {
        const assignedShelf = Object.keys(shelf)[0]
        const selectedShelfId = shelf[assignedShelf].id
        this.setState({selectedShelfId: selectedShelfId})
      }
    })
  }

  handleSubmit(event) {
    event.preventDefault();
    this.props.createSubscription(this.state.selectedShelfId, this.props.book.id)
    this.props.fetchShelves(this.props.user)
  }

  handleChange = selectedOption => {
    this.setState({ selectedOption });
    this.fetchShelfId(selectedOption);
  };

  render() {
    const { selectedOption } = this.state;
    let userCheck = this.props.user ? '' : 'disabled'

    return (
      <div className='add-to-shelf-container'>
        <ShelfButton book={this.props.book} shelfValue={this.state.selectedOption} user={this.props.user} shelves={this.props.shelves}/>
      <form className='add-to-shelf-form' onSubmit={this.handleSubmit}>
        <fieldset className='form-item'>
          <legend className="selectedOption">
              <Select
                value={selectedOption}
                onChange={this.handleChange}
                options={options}
              />
          </legend>
        </fieldset>
        <button onClick={() => this.handleClick()}className="submit-shelf-button" disabled={userCheck}>Add To Shelf</button>
        </form>
      </div>
    );
  }
}

const mapStateToProps = (state) => ({
  user: state.user,
  shelves: state.userBookshelves,
});

function mapDispatchToProps(dispatch) {
  return bindActionCreators({ createSubscription, fetchShelves }, dispatch);
}

export default connect(mapStateToProps, mapDispatchToProps)(SelectForm);
