User.create!(name:      "Rachel Warbelow",
             email:     "demo+rachel@cjr.com",
             password:  "password",
             display_name: "")

User.create!(name:      "Jeff Casimir",
             email:     "demo+jeff@cjr.com",
             password:  "password",
             display_name: "j3")

User.create!(name:      "Jorge Tellez",
             email:     "demo+jorge@cjr.com",
             password:  "password",
             display_name: "novohispano")

20.times do |n|
  item_name = Faker::Commerce.product_name
  description = Faker::Lorem.sentence(3)
  price = Faker::Commerce.price
  active = Faker::Boolean.boolean(0.85)
  Item.create!(name: item_name,
               description: description,
               price: price,
               active: active)
end
