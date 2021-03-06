require 'spec_helper'

# This spec was generated by rspec-rails when you ran the scaffold generator.
# It demonstrates how one might use RSpec to specify the controller code that
# was generated by the Rails when you ran the scaffold generator.

describe ScorecardsController do

  def mock_scorecard(stubs={})
    @mock_scorecard ||= mock_model(Scorecard, stubs).as_null_object
  end

  describe "GET index" do
    it "assigns all scorecards as @scorecards" do
      Scorecard.stub(:all) { [mock_scorecard] }
      get :index
      assigns(:scorecards).should eq([mock_scorecard])
    end
  end

  describe "GET show" do
    it "assigns the requested scorecard as @scorecard" do
      Scorecard.stub(:find).with("37") { mock_scorecard }
      get :show, :id => "37"
      assigns(:scorecard).should be(mock_scorecard)
    end
  end

  describe "GET new" do
    it "assigns a new scorecard as @scorecard" do
      Scorecard.stub(:new) { mock_scorecard }
      get :new
      assigns(:scorecard).should be(mock_scorecard)
    end
  end

  describe "GET edit" do
    it "assigns the requested scorecard as @scorecard" do
      Scorecard.stub(:find).with("37") { mock_scorecard }
      get :edit, :id => "37"
      assigns(:scorecard).should be(mock_scorecard)
    end
  end

  describe "POST create" do
    describe "with valid params" do
      it "assigns a newly created scorecard as @scorecard" do
        Scorecard.stub(:new).with({'these' => 'params'}) { mock_scorecard(:save => true) }
        post :create, :scorecard => {'these' => 'params'}
        assigns(:scorecard).should be(mock_scorecard)
      end

      it "redirects to the created scorecard" do
        Scorecard.stub(:new) { mock_scorecard(:save => true) }
        post :create, :scorecard => {}
        response.should redirect_to(scorecard_url(mock_scorecard))
      end
    end

    describe "with invalid params" do
      it "assigns a newly created but unsaved scorecard as @scorecard" do
        Scorecard.stub(:new).with({'these' => 'params'}) { mock_scorecard(:save => false) }
        post :create, :scorecard => {'these' => 'params'}
        assigns(:scorecard).should be(mock_scorecard)
      end

      it "re-renders the 'new' template" do
        Scorecard.stub(:new) { mock_scorecard(:save => false) }
        post :create, :scorecard => {}
        response.should render_template("new")
      end
    end
  end

  describe "PUT update" do
    describe "with valid params" do
      it "updates the requested scorecard" do
        Scorecard.stub(:find).with("37") { mock_scorecard }
        mock_scorecard.should_receive(:update_attributes).with({'these' => 'params'})
        put :update, :id => "37", :scorecard => {'these' => 'params'}
      end

      it "assigns the requested scorecard as @scorecard" do
        Scorecard.stub(:find) { mock_scorecard(:update_attributes => true) }
        put :update, :id => "1"
        assigns(:scorecard).should be(mock_scorecard)
      end

      it "redirects to the scorecard" do
        Scorecard.stub(:find) { mock_scorecard(:update_attributes => true) }
        put :update, :id => "1"
        response.should redirect_to(scorecard_url(mock_scorecard))
      end
    end

    describe "with invalid params" do
      it "assigns the scorecard as @scorecard" do
        Scorecard.stub(:find) { mock_scorecard(:update_attributes => false) }
        put :update, :id => "1"
        assigns(:scorecard).should be(mock_scorecard)
      end

      it "re-renders the 'edit' template" do
        Scorecard.stub(:find) { mock_scorecard(:update_attributes => false) }
        put :update, :id => "1"
        response.should render_template("edit")
      end
    end
  end

  describe "DELETE destroy" do
    it "destroys the requested scorecard" do
      Scorecard.stub(:find).with("37") { mock_scorecard }
      mock_scorecard.should_receive(:destroy)
      delete :destroy, :id => "37"
    end

    it "redirects to the scorecards list" do
      Scorecard.stub(:find) { mock_scorecard }
      delete :destroy, :id => "1"
      response.should redirect_to(scorecards_url)
    end
  end

end
