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
    this.renderUserState();
    this.renderShelfState('current')
  }

  renderShelfState(shelfName) {
    if (this.props.shelves.length > 0) {
    let currentShelf = this.props.shelves.find((shelf) => shelf[shelfName])[shelfName]
    currentShelf.books.map((book) => {
      if (this.props.book.id === book.id) {
        this.setState({[shelfName + 'Shelf']: true})
       }
      })
    }
  }

  renderUserState() {
    if (this.props.user) {
      this.setState({user: true});
    }
  }

  componentDidUpdate(prevProps, prevState) {
    if (this.state.selectedShelf === null) {
      return
    }

    if (prevProps.shelves !== this.props.shelves) {
      const shelf = this.state.selectedShelf;
      this.setState({[shelf + 'Shelf']: true });

      this.renderShelfState(shelf);

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
    if (this.state.user) {
      return (
        <section className="current-shelves">
          <div className={[readBtnClass, disabledClass].join(' ')}>Read</div>
          <div className={[currentBtnClass, disabledClass].join(' ')}>Currently Reading</div>
          <div className={[btnClass, disabledClass].join(' ')}>Want To Read</div>
        </section>
        )
    } else {
    return (
      <div>
      </div>
    );
  }
  }
}

export default ShelfButton;
