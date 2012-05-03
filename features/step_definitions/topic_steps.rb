Given /^that forum has a topic:$/ do |table|
  table.hashes.each do |attributes|
    @forum.topics.create!(attributes)
  end
end

Given /^"([^\"]*)" has created a topic for this forum:$/ do |email, table|
  table.hashes.each do |attributes|
    attributes = attributes.merge!(user: User.find_by_email!(email))
    @topic = @forum.topics.create!(attributes)
  end
end
