require 'spec_helper'

describe "scorecards/show.html.erb" do
  before(:each) do
    @scorecard = assign(:scorecard, stub_model(Scorecard,
      :name => "Name",
      :course_id => 1
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Name/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/1/)
  end
end
