class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: [:home]

  def home
    @user_arr = []
    @user = current_user
    @user_arr << @user
    @user_arr
  end
end
