class Owner < ActiveRecord::Base

  has_many :owner_suppliers
  has_many :supplier, :through => :owner_suppliers

end
