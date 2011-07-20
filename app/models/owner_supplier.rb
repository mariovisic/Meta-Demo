class OwnerSupplier < ActiveRecord::Base

  belongs_to :owner
  belongs_to :supplier

end
