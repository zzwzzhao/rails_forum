Given /^"([^\"]*)" has created a post for this topic:$/ do |email, table|
  table.hashes.each do |attributes|
    attributes = attributes.merge!(user: User.find_by_email!(email))
    @topic.posts.create!(attributes)
  end
end
