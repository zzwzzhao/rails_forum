Given /^there is a forum called "([^\"]*)"$/ do |name|
  @forum = FactoryGirl.create(:forum, name: name)
end
