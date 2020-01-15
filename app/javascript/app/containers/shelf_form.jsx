import React from 'react';
import { connect } from 'react-redux';
import { bindActionCreators } from 'redux';
import { fetchShelves, createSubscription } from '../actions/index';

class ShelfForm extends React.Component {

  constructor(props) {
    super(props);
    this.state = {
      inShelf: false,
      user: false,
    };
  }

  renderShelfState() {
   if (this.props.shelves.length !== 0) {
      this.props.shelves[0].want.books.map((book) => {
      if (this.props.book.id === book.id){
         this.setState({inShelf: true});
      }
    });
  }
  }

  renderUserState() {
    if (this.props.user) {
      this.setState({user: true});
    }
  }

  componentDidMount() {


    this.props.fetchShelves(this.props.user);
    this.renderUserState();
    if (this.props.shelves !== null || this.props.shelves.length !== 0) {
      this.renderShelfState();
    }
  }

  // !!!important
    handleClick() {
     this.props.createSubscription(this.props.shelves[0].want.id, this.props.book.id);
     this.props.fetchShelves(this.props.user);
     this.setState({ inShelf: true });
    }

  render() {
    let btnClass = this.state.inShelf ? 'in-shelf-disabled' : '';
    let disabledClass = this.state.user ? '' : 'hidden';
    if (this.state.user) {
      return (
        <button onClick={() => this.handleClick()} className={[btnClass, disabledClass].join(' ')}>Want To Read</button>
        )
    } else {
    return (
      <div></div>
    );
  }
  }
}

const mapStateToProps = (state) => ({
  user: state.user,
  shelves: state.userBookshelves,
});

function mapDispatchToProps(dispatch) {
  return bindActionCreators({ fetchShelves, createSubscription }, dispatch);
}

export default connect(mapStateToProps, mapDispatchToProps)(ShelfForm);
