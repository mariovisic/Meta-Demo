class Robot < ActiveRecord::Base

  has_many :robot_parts
  has_many :parts, :through => :robot_parts

  def part_names
    parts.map(&:name).to_sentence.presence || 'None'
  end

end
