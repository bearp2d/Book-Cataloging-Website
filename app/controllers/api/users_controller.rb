class Api::UsersController < ApplicationController
  skip_before_action :authenticate_user!, only: :show

  def show
    @user = User.includes(:bookshelves, :books).find(params[:id])
    if @user
      render :show
    else
      render json: @user.errors.full_messages, status: 422
    end
  end

  def create
  end

  def destroy
  end
end
