require "spec_helper"

describe AttendingsController do
  describe "routing" do

    it "routes to #index" do
      get("/attendings").should route_to("attendings#index")
    end

    it "routes to #new" do
      get("/attendings/new").should route_to("attendings#new")
    end

    it "routes to #show" do
      get("/attendings/1").should route_to("attendings#show", :id => "1")
    end

    it "routes to #edit" do
      get("/attendings/1/edit").should route_to("attendings#edit", :id => "1")
    end

    it "routes to #create" do
      post("/attendings").should route_to("attendings#create")
    end

    it "routes to #update" do
      put("/attendings/1").should route_to("attendings#update", :id => "1")
    end

    it "routes to #destroy" do
      delete("/attendings/1").should route_to("attendings#destroy", :id => "1")
    end

  end
end
