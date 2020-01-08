class Api::ReviewsController < ApplicationController
  skip_before_action :authenticate_user!, only: [:index, :create, :update, :destroy, :show]
  before_action :set_review, only: [:show, :update, :destroy]
  skip_before_action :verify_authenticity_token, only: [:create]

  def index
    @reviews = Review.where(book_id: params[:book_id])
    render :index
  end

  def show
  end

  def create
    @review = Review.new(review_params)
    # @review.user = current_user
    if @review.save
      render :show
    else
      render json: @review.errors.full_messages, status: :unprocessable_entity
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
    params.require(:review).permit(:rating, :comment, :suggest, :book_id, :user_id)
  end

  def set_review
    @review = Review.find(params[:id])
  end
end
