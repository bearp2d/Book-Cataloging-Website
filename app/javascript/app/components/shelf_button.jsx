import React from 'react';

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

  renderShelfState() {
   if (this.props.shelves.length !== 0) {
      this.props.shelves[0].want.books.map((book) => {
      if (this.props.book.id === book.id){
         this.setState({wantShelf: true});
      }
    });


    this.props.shelves[1].current.books.map((book) => {
      if (this.props.book.id === book.id) {
        this.setState({currentShelf: true});
      }
    })

    this.props.shelves[2].read.books.map((book) => {
      if (this.props.book.id === book.id) {
        this.setState({readShelf: true});
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

    if (prevProps.shelves !== this.props.shelves) {
      const shelf = this.state.selectedShelf;
      this.setState({[shelf + 'Shelf']: true });
      // render on refresh
      this.renderShelfState();
    }
  }

  componentDidMount() {
    this.renderUserState();
    if (this.props.shelves !== null || this.props.shelves.length !== 0) {
      this.renderShelfState();
    }
  }

  componentWillReceiveProps(nextProps) {
    console.log('nextProps from shelfButton')
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
