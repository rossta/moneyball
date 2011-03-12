require 'spec_helper'

describe "Scorecards" do
  describe "GET /scorecards" do
    it "works! (now write some real specs)" do
      # Run the generator again with the --webrat flag if you want to use webrat methods/matchers
      get scorecards_path
      response.status.should be(200)
    end
  end
end
