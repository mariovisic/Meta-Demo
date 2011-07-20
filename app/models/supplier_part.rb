class SupplierPart < ActiveRecord::Base

  belongs_to :supplier
  belongs_to :part

end
