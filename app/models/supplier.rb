class Supplier < ActiveRecord::Base

  has_many :supplier_parts
  has_many :parts, :through => :supplier_parts

  has_many :owner_suppliers
  has_many :owners, :through => :owner_suppliers

end
