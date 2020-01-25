import React, { useState, useEffect } from 'react';

class ShelfButton extends React.Component {

  constructor(props) {
    super(props);
    this.state = {
      wantShelf: false,
      currentShelf: false,
      readShelf: false,
      user: false,
      selectedShelf: null,
    };
  }

  componentDidMount() {
    this.props.user ? this.setState({user: true}) : ''
    // Timer set for asynchronicity
      setTimeout(() => {
        this.renderShelfState('current');
        this.renderShelfState('read');
        this.renderShelfState('want');
      }, 200);
    }

  renderShelfState(shelfName) {
    if (this.props.shelves.length !== 0) {

    const currentShelf = this.props.shelves.find((shelf) => shelf[shelfName])[shelfName]
    const currentBook = currentShelf.books.find((book) => this.props.book.id === book.id)
    if (currentBook) {
      this.setState({[shelfName + 'Shelf']: true})
      }
    }
  }

  componentDidUpdate(prevProps, prevState) {
    if (this.state.selectedShelf === null) {
      return
    }

    if (prevProps.shelves !== this.props.shelves) {
      const shelf = this.state.selectedShelf;
      this.setState({[shelf + 'Shelf']: true });
    }
  }

  componentWillReceiveProps(nextProps) {
    if (nextProps.shelfValue !== null) {
      this.setState({ selectedShelf: nextProps.shelfValue.value})
    }
  }

  render() {
    let btnClass = this.state.wantShelf ? 'shelf-flag want' : 'hidden';
    let currentBtnClass = this.state.currentShelf ? 'shelf-flag current' : 'hidden';
    let readBtnClass = this.state.readShelf ? 'shelf-flag read' : 'hidden';
    let disabledClass = this.state.user ? '' : 'hidden';

      return (
        <section className="current-shelves">
          <div className={[readBtnClass, disabledClass].join(' ')}>Read</div>
          <div className={[currentBtnClass, disabledClass].join(' ')}>Currently Reading</div>
          <div className={[btnClass, disabledClass].join(' ')}>Want To Read</div>
        </section>
        )

  }
}

export default ShelfButton;
