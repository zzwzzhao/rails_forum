Given /^"([^"]*)" can view the "([^"]*)" forum$/ do |user, forum|
  Permission.create!(user: User.find_by_email!(user),
                     thing: Forum.find_by_name!(forum),
                     action: "view")
end
