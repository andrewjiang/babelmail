require 'spec_helper'

describe "Babels" do
  describe "GET /babels" do
    it "works! (now write some real specs)" do
      # Run the generator again with the --webrat flag if you want to use webrat methods/matchers
      get babels_path
      response.status.should be(200)
    end
  end
end
