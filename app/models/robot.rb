class Robot < ActiveRecord::Base

  has_many :robot_parts
  has_many :parts, :through => :robot_parts

end
