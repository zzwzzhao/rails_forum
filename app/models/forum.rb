class Forum < ActiveRecord::Base
  attr_accessible :name

  has_many :topics, dependent: :destroy

  validates :name, presence: true, uniqueness: true

  has_many :permissions, as: :thing
 # scope :readable_by, lambda { |user|
 #   joins(:permissions).where(permissions: { action: "view", user_id: user.id})
 # }

end
# == Schema Information
#
# Table name: forums
#
#  id         :integer(4)      not null, primary key
#  name       :string(255)
#  created_at :datetime        not null
#  updated_at :datetime        not null
#

