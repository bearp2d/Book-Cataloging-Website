class Api::ReviewsController < ApplicationController
  skip_before_action :authenticate_user!, only: [:index, :create, :update, :destroy, :show]
  before_action :set_book, only: [:show, :create, :update, :destroy]
  skip_before_action :verify_authenticity_token, only: [:create]

  def index
    @reviews = Review.where(book_id: params[:book_id])
    render :index
  end

  def show
  end

  def create
    # @review = Review.new(review_params)
    review = Review.new(review_params)
    review.user = current_user
    if review.save!
      render json: review
    else
      flash[:notice] = 'You must be logged in to create a review.'
    end
  end

  def update
    if @review.update(review_params)
      render :show
    else
      render json: @review.errors.full_messages, status: 422
    end
  end

  def destroy
    if @review.destroy
      render :show
    else
      render json: @review.errors.full_messages, status: 422
    end
  end

  private

  def review_params
    params.require(:review).permit(:rating, :comment, :book_id)
  end

  def set_book
    @book = Book.find(params[:book_id])
  end
end
