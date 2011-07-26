class Robot < ActiveRecord::Base

  has_many :robot_parts
  has_many :parts, :through => :robot_parts

  def part_names
    parts.order(:name).map(&:name).to_sentence.presence || 'None'
  end

  def manufacturers
    # parts.map(&:suppliers).flatten.map(&:manufacturers).flatten
    Manufacturer.joins{suppliers.parts.robots}.where('robots.id' => id)
  end

end
