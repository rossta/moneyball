require "spec_helper"

describe HolesController do
  describe "routing" do

    it "recognizes and generates #index" do
      { :get => "/holes" }.should route_to(:controller => "holes", :action => "index")
    end

    it "recognizes and generates #new" do
      { :get => "/holes/new" }.should route_to(:controller => "holes", :action => "new")
    end

    it "recognizes and generates #show" do
      { :get => "/holes/1" }.should route_to(:controller => "holes", :action => "show", :id => "1")
    end

    it "recognizes and generates #edit" do
      { :get => "/holes/1/edit" }.should route_to(:controller => "holes", :action => "edit", :id => "1")
    end

    it "recognizes and generates #create" do
      { :post => "/holes" }.should route_to(:controller => "holes", :action => "create")
    end

    it "recognizes and generates #update" do
      { :put => "/holes/1" }.should route_to(:controller => "holes", :action => "update", :id => "1")
    end

    it "recognizes and generates #destroy" do
      { :delete => "/holes/1" }.should route_to(:controller => "holes", :action => "destroy", :id => "1")
    end

  end
end
