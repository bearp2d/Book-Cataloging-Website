class Api::BookshelvesController < ApplicationController
  def index
    @bookshelves = Bookshelf.where(user_id: params[:user_id])
    render :index
  end

  def show
    @bookshelf = Bookshelf.includes(:books).find(params[:id])
    render :show
  end
end
