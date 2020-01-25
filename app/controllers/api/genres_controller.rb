class Api::GenresController < ApplicationController
  skip_before_action :authenticate_user!, only: [ :index, :show ]
  def index
    @genres = Genre.all
  end

  def show
    @genre = Genre.find(params[:id])
    render :show
  end
end
