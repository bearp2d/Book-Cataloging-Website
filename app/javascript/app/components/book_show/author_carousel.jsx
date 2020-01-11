import React from "react";
import Slider from "react-slick";
import { Link } from 'react-router-dom';
import Book from '../book';

class AuthorCarousel extends React.Component {
  render() {
    let { similar_authors } = this.props.author;

    if (similar_authors.length > 5) {
      const oldAuthors = similar_authors;
      similar_authors = oldAuthors.sort(() => .5 - Math.random()).slice(0,5);
    }

    const settings = {
      dots: true,
      infinite: true,
      speed: 500,
      slidesToShow: 3,
      slidesToScroll: 1,
      autoplay: true,
      autoplaySpeed: 3000,
      vertical: true,
      verticalSwiping: true,
    };

    return (
      <Slider {...settings}>
       {
        similar_authors.map((author) => {
          return (
            <div className="carousel-single-image">
            <Link style={{textDecoration: 'none'}}key={author.id} to={`/authors/${author.id}`}>
              <div className='similar-author-item'>

                  <img src={author.image} alt=""/>
                  <h6>{author.name}</h6>

              </div>
              </Link>
            </div>
          );
        })
       }
      </Slider>
    );
  }
}

export default AuthorCarousel;
