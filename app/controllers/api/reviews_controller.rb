class Api::ReviewsController < ApplicationController
  skip_before_action :authenticate_user!, only: :index

  def index
    # book = Book.find(params[:book_id])
    @reviews = Review.where(book_id: params[:book_id])
    render :index
  end
end
