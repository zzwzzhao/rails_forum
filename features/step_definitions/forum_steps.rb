Given /^there is a forum called "([^\"]*)"$/ do |name|
  @forum = Factory(:forum, name: name)
end
