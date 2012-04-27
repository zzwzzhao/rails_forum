class Permission < ActiveRecord::Base
  attr_accessible :action, :thing_id, :thing_type, :user_id,
    :user, :thing

  belongs_to :user
  belongs_to :thing, polymorphic: true
end
# == Schema Information
#
# Table name: permissions
#
#  id         :integer(4)      not null, primary key
#  user_id    :integer(4)
#  thing_id   :integer(4)
#  thing_type :string(255)
#  action     :string(255)
#  created_at :datetime        not null
#  updated_at :datetime        not null
#

