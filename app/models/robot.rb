class Robot < ActiveRecord::Base

  has_many :robot_parts
  has_many :parts, :through => :robot_parts

  def part_names
    parts.order(:name).select(:name).map(&:name).to_sentence.presence || 'None'
  end

  def supplier_names
    suppliers.order(:name).select(:name).map(&:name).to_sentence.presence || 'None'
  end

  def manufacturer_names
    manufacturers.order(:name).select(:name).map(&:name).to_sentence.presence || 'None'
  end

  def suppliers
    Supplier.joins{parts.robots}.where('robots.id' => id)
  end

  def manufacturers
    Manufacturer.joins{suppliers.parts.robots}.where('robots.id' => id)
  end

end
