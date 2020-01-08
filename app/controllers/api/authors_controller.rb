class Api::AuthorsController < ApplicationController
  skip_before_action :authenticate_user!, only: [:show]

  def show
    @author = Author.find(params[:id])
    render :show
  end
end
