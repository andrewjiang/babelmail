class PricingController < ApplicationController

	before_filter :confirm_logged_in, :only => [:show]

  def select
  	
  end

end