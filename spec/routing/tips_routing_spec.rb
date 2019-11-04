require "rails_helper"

RSpec.describe TipsController, type: :routing do
  describe "routing" do
    it "routes to #index" do
      expect(:get => "/tips").to route_to("tips#index")
    end

    it "routes to #new" do
      expect(:get => "/tips/new").to route_to("tips#new")
    end

    it "routes to #show" do
      expect(:get => "/tips/1").to route_to("tips#show", :id => "1")
    end

    it "routes to #edit" do
      expect(:get => "/tips/1/edit").to route_to("tips#edit", :id => "1")
    end


    it "routes to #create" do
      expect(:post => "/tips").to route_to("tips#create")
    end

    it "routes to #update via PUT" do
      expect(:put => "/tips/1").to route_to("tips#update", :id => "1")
    end

    it "routes to #update via PATCH" do
      expect(:patch => "/tips/1").to route_to("tips#update", :id => "1")
    end

    it "routes to #destroy" do
      expect(:delete => "/tips/1").to route_to("tips#destroy", :id => "1")
    end
  end
end
