Given /^that forum has a topic:$/ do |table|
  table.hashes.each do |attributes|
    @topic = @forum.topics.create!(attributes)
  end
end

Given /^that topic has a post:$/ do |table|
  table.hashes.each do |attributes|
    @topic.posts.create!(attributes)
  end
end
