class Api::BooksubscriptionsController < ApplicationController
  def index
    @subscriptions = BookSubscription.all
  end

  def create
    @subscription = BookSubscription.new(booksubscription_params)
    if @subscription.save!
      render json: @subscription
    else
      render json: @review.errors.full_messages, status: 422
    end
  end

  def destroy
    @subscription = BookSubscription.find_by(booksubscription_params)
    if @subscription
      @subscription.destroy
    else
      render json: ['This book is not in your shelves.'], status: 404
    end
  end

  private

  def booksubscription_params
    params.require(:booksubscription).permit(:bookshelf_id, :book_id)
  end
end
