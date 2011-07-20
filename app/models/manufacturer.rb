class Manufacturer < ActiveRecord::Base

  has_many :supplier_manufacturers
  has_many :suppliers, :through => :supplier_manufacturer

end
