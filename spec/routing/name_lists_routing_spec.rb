require "spec_helper"

describe NameListsController do
  describe "routing" do

    it "routes to #index" do
      get("/name_lists").should route_to("name_lists#index")
    end

    it "routes to #new" do
      get("/name_lists/new").should route_to("name_lists#new")
    end

    it "routes to #show" do
      get("/name_lists/1").should route_to("name_lists#show", :id => "1")
    end

    it "routes to #edit" do
      get("/name_lists/1/edit").should route_to("name_lists#edit", :id => "1")
    end

    it "routes to #create" do
      post("/name_lists").should route_to("name_lists#create")
    end

    it "routes to #update" do
      put("/name_lists/1").should route_to("name_lists#update", :id => "1")
    end

    it "routes to #destroy" do
      delete("/name_lists/1").should route_to("name_lists#destroy", :id => "1")
    end

  end
end
