require "spec_helper"

describe BabelsController do
  describe "routing" do

    it "routes to #index" do
      get("/babels").should route_to("babels#index")
    end

    it "routes to #new" do
      get("/babels/new").should route_to("babels#new")
    end

    it "routes to #show" do
      get("/babels/1").should route_to("babels#show", :id => "1")
    end

    it "routes to #edit" do
      get("/babels/1/edit").should route_to("babels#edit", :id => "1")
    end

    it "routes to #create" do
      post("/babels").should route_to("babels#create")
    end

    it "routes to #update" do
      put("/babels/1").should route_to("babels#update", :id => "1")
    end

    it "routes to #destroy" do
      delete("/babels/1").should route_to("babels#destroy", :id => "1")
    end

  end
end
