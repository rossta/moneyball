require 'spec_helper'

describe "scorecards/new.html.erb" do
  before(:each) do
    assign(:scorecard, stub_model(Scorecard,
      :name => "MyString",
      :course_id => 1
    ).as_new_record)
  end

  it "renders new scorecard form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => scorecards_path, :method => "post" do
      assert_select "input#scorecard_name", :name => "scorecard[name]"
      assert_select "input#scorecard_course_id", :name => "scorecard[course_id]"
    end
  end
end
