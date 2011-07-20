class SupplierManufacturer < ActiveRecord::Base

  belongs_to :manufacturer
  belongs_to :supplier

end
