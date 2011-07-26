Factory.define :robot do |f|
  f.name        { Faker::Product.product_name }
  f.description { Faker::Lorem.paragraph }
end

Factory.define :part do |f|
  f.name        { Faker::Product.model }
  f.price       { rand * 100 }
  f.popularity  { Part::POPULARITIES.sample }
end

Factory.define :supplier do |f|
  f.name { Faker::Company.name }
end

Factory.define :manufacturer do |f|
  f.name { Faker::Company.name }
  f.popularity { (1..10).to_a.sample }
end
