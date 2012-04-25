class Forum < ActiveRecord::Base
  attr_accessible :name

  has_many :topics

  validates :name, presence: true

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

