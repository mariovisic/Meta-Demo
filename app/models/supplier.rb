class Supplier < ActiveRecord::Base

  has_many :supplier_parts
  has_many :parts, :through => :supplier_parts

  has_many :supplier_manufacturers
  has_many :manufacturers, :through => :supplier_manufacturers

end
