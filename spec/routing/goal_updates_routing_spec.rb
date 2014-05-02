require "spec_helper"

describe GoalUpdatesController do
  describe "routing" do

    it "routes to #index" do
      get("/goal_updates").should route_to("goal_updates#index")
    end

    it "routes to #new" do
      get("/goal_updates/new").should route_to("goal_updates#new")
    end

    it "routes to #show" do
      get("/goal_updates/1").should route_to("goal_updates#show", :id => "1")
    end

    it "routes to #edit" do
      get("/goal_updates/1/edit").should route_to("goal_updates#edit", :id => "1")
    end

    it "routes to #create" do
      post("/goal_updates").should route_to("goal_updates#create")
    end

    it "routes to #update" do
      put("/goal_updates/1").should route_to("goal_updates#update", :id => "1")
    end

    it "routes to #destroy" do
      delete("/goal_updates/1").should route_to("goal_updates#destroy", :id => "1")
    end

  end
end
