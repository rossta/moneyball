require 'spec_helper'

describe "holes/new.html.erb" do
  before(:each) do
    assign(:hole, stub_model(Hole,
      :scorecard_id => 1,
      :score => 1,
      :par => 1,
      :yards => 1,
      :course_id => 1
    ).as_new_record)
  end

  it "renders new hole form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => holes_path, :method => "post" do
      assert_select "input#hole_scorecard_id", :name => "hole[scorecard_id]"
      assert_select "input#hole_score", :name => "hole[score]"
      assert_select "input#hole_par", :name => "hole[par]"
      assert_select "input#hole_yards", :name => "hole[yards]"
      assert_select "input#hole_course_id", :name => "hole[course_id]"
    end
  end
end
