Factory.define :user do |user|
  user.sequence(:email) { |n| "user#{n}@163.com" }
  user.password "password"
  user.password_confirmation "password"
end
