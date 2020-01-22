import React from 'react';
import { connect } from 'react-redux';
import { bindActionCreators } from 'redux';
import { fetchBooks, fetchShelves } from '../actions/index';
import Jumbotron from 'react-bootstrap/Jumbotron'
import { Link } from 'react-router-dom';

import Book from '../components/book';
import BookshelfOptions from '../components/bookshelf_options';

class UserShelves extends React.Component {
  constructor(props) {
    super(props);

    this.state = {
      selectedShelf: this.props.shelves,
    }
  }

  updateShelfName(selectedShelfName) {
    if (!selectedShelfName) {
      selectedShelfName = this.state.selectedShelf.name
    }
    if (selectedShelfName === 'read') {
      return 'Reading'
    } else if (selectedShelfName  === 'current') {
        return 'Currently Reading'
    } else if (selectedShelfName === 'want') {
        return 'Want to Read'
    } else {
      return
    }
  }

  componentDidMount() {
    if (this.props.user !== null || !this.props.shelves) {
     this.props.fetchShelves(this.props.user)
    }
  }

  componentDidUpdate(prevProps, prevState) {
    if (prevProps.shelves !== this.props.shelves) {
      this.setState({selectedShelf: this.props.shelves[0].read})
    }
    if (prevState.selectedShelf !== this.state.selectedShelf) {
      this.updateShelfName();
    }
  }

  handleClick(currentShelf) {
    this.setState({selectedShelf: currentShelf })
  }


  defineShelves() {
      return (
        this.props.shelves.map((shelf) => {
          let currentShelf = Object.values(shelf)[0]
          return (
            <div className='bookshelf-navigation'>
              <p onClick={() => {this.handleClick(currentShelf)}}>{this.updateShelfName(currentShelf.name)} <span>({currentShelf.books.length})</span></p>
            </div>
          )
        })
      )
  }


  render() {
    return (
      <div className='main-content-container'>
        <div className="main-content">
        <div className='shelf-content'>
          <section className="bookshelf-navigation-container">
            <h1>Bookshelves</h1>
            {this.defineShelves()}
          </section>
          <section className="bookshelf-items-container">
            <BookshelfOptions selectedShelf={this.state.selectedShelf} shelfName={this.updateShelfName(this.state.selectedShelf.name)}/>
          </section>
          </div>
        </div>
      </div>
    );
  }
}

const mapStateToProps = (state) => ({
  books: state.books,
  user: state.user,
  shelves: state.userBookshelves,
});

function mapDispatchToProps(dispatch) {
  return bindActionCreators({ fetchBooks, fetchShelves }, dispatch);
}


export default connect(mapStateToProps, mapDispatchToProps)(UserShelves);
