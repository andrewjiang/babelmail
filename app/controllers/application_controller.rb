class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception

  before_filter :configure_permitted_parameters, if: :devise_controller?

  protected

  def configure_permitted_parameters
    devise_parameter_sanitizer.for(:sign_up) << :name << :surname << :username << :account_type
    devise_parameter_sanitizer.for(:account_update) << :name << :surname << :username << :account_type
  end

	def confirm_logged_in
	    unless session[:id]
	        flash[:notice] = "Please log in"
	        redirect_to :root
	        return false
	    else
	        return true
	    end
	end

  
end