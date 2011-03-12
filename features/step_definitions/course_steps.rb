Given /^a course named "([^\"]*)"$/ do |name|
  Factory :course, :name => name
end