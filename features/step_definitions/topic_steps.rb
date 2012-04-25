Given /^that forum has a topic:$/ do |table|
  table.hashes.each do |attributes|
    @forum.topics.create!(attributes)
  end
end

