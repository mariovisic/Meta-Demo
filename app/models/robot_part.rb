class RobotPart < ActiveRecord::Base

  belongs_to :robot
  belongs_to :part

end
