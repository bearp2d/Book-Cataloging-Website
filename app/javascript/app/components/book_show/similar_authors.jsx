import React from 'react';
import { Link, withRouter } from 'react-router-dom';
import AuthorCarousel from './author_carousel';

class SimilarAuthors extends React.Component {

  renderSimilarAuthorCarousel() {
    const { author } = this.props;
    if (author && author.similar_authors.length > 2) {
      return (
        <AuthorCarousel author={author} />
      );
    }
    if (author && author.similar_authors.length === 1) {
      return (
        <div className="carousel-single-image">
        <Link style={{textDecoration: 'none'}}key={author.similar_authors[0].id} to={`/authors/${author.similar_authors[0].id}`}>
          <div className='similar-author-item'>

              <img src={author.similar_authors[0].image} alt=""/>
              <h6>{author.similar_authors[0].name}</h6>

          </div>
          </Link>
        </div>
      );
    }
    if (author && author.similar_authors.length <= 1) {
      return (
        <p className="carousel-message">This author has no similar authors...</p>
      );
    }
  }

  renderSimilarAuthors() {
    const { author } = this.props;
    if (author) {
      return (
        <div className="similar-author-card">
          <section className="similar-author-title">
            <h6>
              Authors like {author.name}
            </h6>
          </section>
          { this.renderSimilarAuthorCarousel() }
        </div>
      );
    }
  }


  render() {
    return (
      <div>
        { this.renderSimilarAuthors() }
      </div>
    );
  }
}

export default SimilarAuthors;
