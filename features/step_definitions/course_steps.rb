Given /^a course named "([^\"]*)"$/ do |name|
  Factory :course, :name => name
end

Given /^the tournament "([^"]*)" at "([^"]*)"$/ do |name, course_name|
  Factory :tournament, :name => name, :course => Course.find_by_name(course_name)
end