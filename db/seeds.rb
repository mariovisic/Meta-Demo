require 'lib/factories'

puts '=== Creating Manufacturers === '
100.times { Factory.create(:manufacturer) }

puts '=== Creating Suppliers === '
200.times { Factory.create(:supplier) }

puts '=== Creating Parts === '
500.times { Factory.create(:part) }

puts '=== Creating Robots === '
1000.times { Factory.create(:robot) }
