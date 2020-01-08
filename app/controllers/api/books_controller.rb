class Api::BooksController < ApplicationController
  skip_before_action :authenticate_user!, only: [ :index, :show ]
  def index
    @books = Book.order(created_at: :desc)
    render :index
  end

  def show
    @book = Book.find(params[:id])
    render :show
  end
end
