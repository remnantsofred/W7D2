class UsersController < ApplicationController

  def create
    user = User.new(user_params)
    if user.save!
      login!(user)
      redirect_to user_url(user)
    else
      redirect_to new_session_url
    end
  end 

  def new
  end

  def show

  end

  private
  def user_params
    params.require(:user).permit(:email, :password)
  end

end