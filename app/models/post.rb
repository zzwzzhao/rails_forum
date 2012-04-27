class Post < ActiveRecord::Base
  belongs_to :topic
  belongs_to :user
  attr_accessible :body, :user

  validates :body, presence: true, length: { minimum: 10 }
end
# == Schema Information
#
# Table name: posts
#
#  id         :integer(4)      not null, primary key
#  body       :text
#  topic_id   :integer(4)
#  created_at :datetime        not null
#  updated_at :datetime        not null
#

