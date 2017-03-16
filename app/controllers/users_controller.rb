class UsersController < ApplicationController
  def create
    @user = User.new(user_params)
    if @user.save
      flash[:notice] = "Subscribed Successfully!"
      render 'homes/landing-page'
    else
      flash[:notice] = "Something went wrong!"
      render 'homes/landing-page'
    end
  end

  private

  def user_params
    params.require(:user).permit(:email)
  end
end
