import React from "react";
import Slider from "react-slick";
import Book from './book';

class Carousel extends React.Component {
  render() {
    const { author_books } = this.props.book;
    const settings = {
      dots: true,
      infinite: true,
      speed: 500,
      slidesToShow: 3,
      slidesToScroll: 1,
      autoplay: true,
      autoplaySpeed: 3000,
    };

    return (
      <Slider {...settings}>
       {
        author_books.map((book) => {
          return (
            <div className='carousel-item'>
              <Book book={book}/>
            </div>
          );
        })
       }
      </Slider>
    );
  }
}

export default Carousel;
