Given /^I.m a visitor to the site$/ do
  #no op
end

Given /^I.m a mobile visitor to the site$/ do
  visit root_path
  click_link "Mobile"
end