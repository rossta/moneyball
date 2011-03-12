require "spec_helper"

describe ScorecardsController do
  describe "routing" do

    it "recognizes and generates #index" do
      { :get => "/scorecards" }.should route_to(:controller => "scorecards", :action => "index")
    end

    it "recognizes and generates #new" do
      { :get => "/scorecards/new" }.should route_to(:controller => "scorecards", :action => "new")
    end

    it "recognizes and generates #show" do
      { :get => "/scorecards/1" }.should route_to(:controller => "scorecards", :action => "show", :id => "1")
    end

    it "recognizes and generates #edit" do
      { :get => "/scorecards/1/edit" }.should route_to(:controller => "scorecards", :action => "edit", :id => "1")
    end

    it "recognizes and generates #create" do
      { :post => "/scorecards" }.should route_to(:controller => "scorecards", :action => "create")
    end

    it "recognizes and generates #update" do
      { :put => "/scorecards/1" }.should route_to(:controller => "scorecards", :action => "update", :id => "1")
    end

    it "recognizes and generates #destroy" do
      { :delete => "/scorecards/1" }.should route_to(:controller => "scorecards", :action => "destroy", :id => "1")
    end

  end
end
