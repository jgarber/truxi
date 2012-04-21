require "spec_helper"

describe MoveRequestsController do
  describe "routing" do

    it "routes to #index" do
      get("/move_requests").should route_to("move_requests#index")
    end

    it "routes to #new" do
      get("/move_requests/new").should route_to("move_requests#new")
    end

    it "routes to #show" do
      get("/move_requests/1").should route_to("move_requests#show", :id => "1")
    end

    it "routes to #edit" do
      get("/move_requests/1/edit").should route_to("move_requests#edit", :id => "1")
    end

    it "routes to #create" do
      post("/move_requests").should route_to("move_requests#create")
    end

    it "routes to #update" do
      put("/move_requests/1").should route_to("move_requests#update", :id => "1")
    end

    it "routes to #destroy" do
      delete("/move_requests/1").should route_to("move_requests#destroy", :id => "1")
    end

  end
end
