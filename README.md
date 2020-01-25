# GreatReads

Check it out [Live](https://great-reads-nick-galluzzo.herokuapp.com/)

## Description

GreatReads is a book cataloging web application that allows users to browse, review, and add popular books to their bookshelves. `Rails` and `PostgreSQL` were used to build the back-end. The front end was built using `React.js`, `Redux`, and `JavaScript`. All pages are fully responsive and dynamic depending on if the user is logged in or browsing as a guest.

### Features and Implementation

#### Welcome views are dynamic for guests and users

Guest Welcome
![Image of GreatReads Guest HomePage](app/assets/images/guest-home.png)

User Welcome
![Image of GreatReads User HomePage](app/assets/images/user-home.png)

#### Browse
Upon loading GreatReads, users and guests are given the option to browse books by genre. Each book has one genre and each genre has many books. 


![Gif of GreatReads Guest HomePage](app/assets/images/home-gif.gif)


````
constructor(props) {
      super(props);
      this.state = {
        selectedGenre: 'all'
      };
    };
````

In order for books to be populated by genre, the Redux state populates all genres on component mount and the React state tracks the selected book genre. On load, the genre is set to list all books. 

````
renderGenres() {
    let { genres } = this.props
    let allGenres = genres.flat()
    allGenres.unshift({name: 'all'})

    return (
      allGenres.map((genre) => {
        let upcaseGenre = genre.name.charAt(0).toUpperCase() + genre.name.slice(1);
        return <li onClick={() => this.handleClick(genre.name)} className={this.setSelected(genre.name)}>{upcaseGenre}</li>
      })
    )
  }
````

When a user clicks through the different genres, the React state is updated and the books are concurrently displayed. This use of the React state allows the genres to be populated without a full page refresh.

### Book Show
When the user clicks on a book, they are taken to the Book Show page


