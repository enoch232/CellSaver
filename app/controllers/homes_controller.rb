class HomesController < ApplicationController
  def landing_page
    @user = User.new
    flash[:notice] = ""
    render 'homes/landing-page'
  end
end
