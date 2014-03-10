class UsersController < ApplicationController

	before_filter :authenticate_user!

  def pricing
    @user = User.find(params[:id])
    # If this show page is only for the currently logged in user change it to @user = current_user
  end

end