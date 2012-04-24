Given /^there is a forum called "([^\"]*)"$/ do |name|
  Factory(:forum, name: name)
end
