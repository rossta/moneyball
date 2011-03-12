When /^I have a scorecard for "([^\"]*)"$/ do |course_name|
  Factory(:scorecard, :course => Course.find_by_name(course_name))
end