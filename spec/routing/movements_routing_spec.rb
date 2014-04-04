require "spec_helper"

describe MovementsController do
  describe "routing" do

    it "routes to #index" do
      get("/movements").should route_to("movements#index")
    end

    it "routes to #new" do
      get("/movements/new").should route_to("movements#new")
    end

    it "routes to #show" do
      get("/movements/1").should route_to("movements#show", :id => "1")
    end

    it "routes to #edit" do
      get("/movements/1/edit").should route_to("movements#edit", :id => "1")
    end

    it "routes to #create" do
      post("/movements").should route_to("movements#create")
    end

    it "routes to #update" do
      put("/movements/1").should route_to("movements#update", :id => "1")
    end

    it "routes to #destroy" do
      delete("/movements/1").should route_to("movements#destroy", :id => "1")
    end

  end
end
