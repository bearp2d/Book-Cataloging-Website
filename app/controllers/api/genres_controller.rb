class Api::GenresController < ApplicationController
  skip_before_action :authenticate_user!, only: [ :index, :show ]

  def show
    @genre = Genre.find(params[:id])
  end
end
