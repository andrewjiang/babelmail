class RegistrationsController < ApplicationController
  def account_type
  	@user = current_user
  end
end
