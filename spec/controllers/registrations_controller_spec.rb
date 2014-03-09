require 'spec_helper'

describe RegistrationsController do

  describe "GET 'account_type'" do
    it "returns http success" do
      get 'account_type'
      response.should be_success
    end
  end

end
