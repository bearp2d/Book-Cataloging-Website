class Api::UsersController < ApplicationController
  skip_before_action :authenticate_user!, only: :show

  def index
    @users = User.all
    render :index
  end

  def show
    @user = User.includes(:bookshelves, :books).find(params[:id])
    if @user
      render :show
    else
      render json: @user.errors.full_messages, status: 422
    end
  end

  def create
    @user = User.new(user_params)

    if @user.save
      render @user
    else
      render json: @user.errors.full_messages, status: 422
    end

  def destroy
  end

  private

  def user_params
    params.require(:user).permit(:email, :username, :password)
  end
end
