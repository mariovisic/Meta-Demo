require 'lib/factories'

puts '=== Creating Manufacturers === '
10.times { Factory.create(:manufacturer) }

puts '=== Creating Suppliers === '
20.times { Factory.create(:supplier) }

puts '=== Creating Parts === '
50.times { Factory.create(:part) }

puts '=== Creating Robots === '
100.times { Factory.create(:robot) }

puts '=== Creating Robot Parts === '
200.times do
  robot  = Robot.order('RANDOM()').first
  part   = Part.order('RANDOM()').first
  RobotPart.create!(:robot => robot, :part => part)
end

puts '=== Creating Supplier Parts === '
200.times do
  supplier = Supplier.order('RANDOM()').first
  part     = Part.order('RANDOM()').first
  SupplierPart.create!(:supplier => supplier, :part => part)
end

puts '=== Creating Supplier Manufacturers === '
200.times do
  supplier     = Supplier.order('RANDOM()').first
  manufacturer = Manufacturer.order('RANDOM()').first
  SupplierManufacturer.create!(:supplier => supplier, :manufacturer => manufacturer)
end
