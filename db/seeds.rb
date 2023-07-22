# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

require "faker"

puts "---------------------------------------------------------------"
puts "Sit tight, we're seeding the database..."
puts "---------------------------------------------------------------"


# 2.times do
#   User.create(
#     email: Faker::Internet.email,
#     password: "123456",
#     username: (Faker::Internet.username(specifier: 5..8)).downcase
#   )
# end

# puts "Users created!"
# puts "---------------------------------------------------------------"

# 10.times do
#   Location.create(
#     name: Faker::Address.street_name,
#     address: Faker::Address.full_address,
#     city: Faker::Address.city,
#     neighborhood: Faker::Address.community,
#     latitude: Faker::Address.latitude,
#     longitude: Faker::Address.longitude,
#     category: "Public Space",
#     subcategory: ["Park", "Street", "Neighborhood"].sample,
#     user_id: [1,2].sample
#   )
# end

puts "Locations ready!"
puts "---------------------------------------------------------------"

17.times do
  adjectives = [Faker::Adjective.positive, Faker::Adjective.negative].sample

  Review.create(
    title: adjectives,
    comment: Faker::Restaurant.review,
    # photo: 'logo.png',
    noise_level: rand(1..5),
    family_zone: rand(1..5),
    pet_friendly: rand(1..5),
    nightlife: rand(1..5),
    safety: rand(1..5),
    internet_speed: rand(1..5),
    restaurants_qty: rand(1..5),
    shopping: rand(1..5),
    meal_cost: Faker::Commerce.price(range: 0..120.0),
    beer_cost: Faker::Commerce.price(range: 0..20.0),
    coffee_cost:  Faker::Commerce.price(range: 0..15.0),
    rent_cost: Faker::Commerce.price(range: 0..10000.0),
    uber: [true, false].sample,
    bike: [true, false].sample,
    metro: [true, false].sample,
    bus: [true, false].sample,
    dealer: [true, false].sample,
    user_id: 1,
    location_id: 10
  )
end

puts "Hooray! We're done seeding the database!"
