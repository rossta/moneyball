require 'spec_helper'

describe "tournaments/new.html.erb" do
  before(:each) do
    assign(:tournament, stub_model(Tournament,
      :name => "MyString",
      :course_id => 1
    ).as_new_record)
  end

  it "renders new tournament form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => tournaments_path, :method => "post" do
      assert_select "input#tournament_name", :name => "tournament[name]"
      assert_select "input#tournament_course_id", :name => "tournament[course_id]"
    end
  end
end
