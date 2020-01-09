class Api::BookshelvesController < ApplicationController
  skip_before_action :authenticate_user!, only: [ :index, :show ]

  def index
    @bookshelves = Bookshelf.where(user_id: params[:user_id])
    render :index
  end

  def show
    @bookshelf = Bookshelf.includes(:books).find(params[:id])
    render :show
  end
end
