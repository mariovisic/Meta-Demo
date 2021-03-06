class Part < ActiveRecord::Base

  POPULARITIES = [ 'Low', 'Medium' 'High' ]

  has_many :robot_parts
  has_many :robots, :through => :robot_parts

  has_many :supplier_parts
  has_many :suppliers, :through => :supplier_parts

end
