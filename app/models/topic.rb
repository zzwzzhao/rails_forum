class Topic < ActiveRecord::Base
  belongs_to :forum
  has_many :posts, order: "created_at ASC"
  attr_accessible :title, :body

  validates :title, presence: true
  validates :body, presence: true, length: { minimum: 10 }
end
# == Schema Information
#
# Table name: topics
#
#  id         :integer(4)      not null, primary key
#  title      :string(255)
#  forum_id   :integer(4)
#  created_at :datetime        not null
#  updated_at :datetime        not null
#  body       :text
#

