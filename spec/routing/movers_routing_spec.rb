require "spec_helper"

describe MoversController do
  describe "routing" do

    it "routes to #index" do
      get("/movers").should route_to("movers#index")
    end

    it "routes to #new" do
      get("/movers/new").should route_to("movers#new")
    end

    it "routes to #show" do
      get("/movers/1").should route_to("movers#show", :id => "1")
    end

    it "routes to #edit" do
      get("/movers/1/edit").should route_to("movers#edit", :id => "1")
    end

    it "routes to #create" do
      post("/movers").should route_to("movers#create")
    end

    it "routes to #update" do
      put("/movers/1").should route_to("movers#update", :id => "1")
    end

    it "routes to #destroy" do
      delete("/movers/1").should route_to("movers#destroy", :id => "1")
    end

  end
end
