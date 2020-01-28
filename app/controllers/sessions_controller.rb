class SessionsController < Devise::SessionsController
  def new
    @user = User.find_by(email: 'guest@guest.com')
    sign_in(@user)
    redirect_to root_path
  end

  def create
    @user = User.find(email: 'guest@guest.com')
    sign_in(@user)
    redirect_to root_path
  end
end
