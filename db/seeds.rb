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
puts "------------------------------------------------------------------------------------------------"
puts "Wait! First, say goodbye to your tables"
Review.destroy_all
Location.destroy_all
User.destroy_all
puts "Your data has gone to oblivion"
puts "------------------------------------------------------------------------------------------------"
require "open-uri"
puts "------------------------------------------------------------------------------------------------"
puts "Let's get you some fine and prestigious USERS"
puts "------------------------------------------------------------------------------------------------"
puts "Creating usuario 1"
usuario1 = User.new(
  email: "brodriguezmckeon@gmail.com", password: "123456", username: "blanca"
)
avatar = URI.open("https://res.cloudinary.com/dy2jex4vs/image/upload/v1690510451/Katara_smiles_at_coronation_copy_1_zpurkc.png")
usuario1.avatar.attach(io: avatar, filename: "usuario1.png", content_type: "image/png")
usuario1.save
puts "usuario 1 created"
puts "------------------------------------------------------------------------------------------------"
puts "Creating usuario 2"
usuario2 = User.new(
  email: "jazz@lewagon.com", password: "123456", username: "jazz"
)
avatar = URI.open("https://avatars.githubusercontent.com/u/126917014?v=4")
usuario2.avatar.attach(io: avatar, filename: "usuario2.jpg", content_type: "image/jpg")
usuario2.save
puts "usuario 2 created amigo"
puts "------------------------------------------------------------------------------------------------"
puts "Creating usuario 3"
usuario3 = User.new(
  email: "adrianperezj@outlook.com", password: "123456", username: "eydrian"
)
avatar = URI.open("https://res.cloudinary.com/wagon/image/upload/c_fill,g_face,h_200,w_200/v1678026616/kwmimos83vez72xdwio5.jpg")
usuario3.avatar.attach(io: avatar, filename: "usuario3.jpg", content_type: "image/jpg")
usuario3.save
puts "usuario 3 creado"
puts "------------------------------------------------------------------------------------------------"
puts "Creating usuario 4"
usuario4 = User.new(
  email: "amara@mail.com", password: "123456", username: "amara"
)
avatar = URI.open("https://avatars.githubusercontent.com/u/126935049?v=4")
usuario4.avatar.attach(io: avatar, filename: "usuario4.jpg", content_type: "image/jpg")
usuario4.save
usuarios = [usuario1, usuario2, usuario3, usuario4]
puts "usuario 4 creado"
puts "4 users created astonishingly!"
puts "---------------------------------------------------------------"
puts "------------------------------------------------------------------------------------------------"
puts "Creating some badass LOCATIONS"
puts "------------------------------------------------------------------------------------------------"
puts "Creating location 1"
location1 = Location.new(
  name: "Chapultepec",
  address: "Bosque de Chapultepec I Secc, Miguel Hidalgo, 11580 Mexico City",
  city: "Mexico City",
  neighborhood: "Chapultepec",
  latitude: 19.4204977566453,
  longitude: -99.1819547951673,
  category: "Public Space",
  subcategory: "Cultural Landmark",
  user_id: usuarios.sample.id
)
photo = URI.open("https://res.cloudinary.com/dy2jex4vs/image/upload/v1690501098/glide/fxhrc0k3slpse3u4gxou.jpg")
location1.photo.attach(io: photo, filename: "location1.jpg", content_type: "image/jpg")
location1.save!
puts "location 1 created successfully"
puts "------------------------------------------------------------------------------------------------"
puts "Creating location 2"
location2 = Location.new(
  name: "Ángel de la independencia",
  address: "Av. P.º de la Reforma, Juárez, Cuauhtémoc, 06600 Ciudad de México, CDMX",
  city: "Mexico City",
  neighborhood: "Juárez",
  latitude: 19.4271673063695,
  longitude: -99.1676851816917,
  category: "Public Space",
  subcategory: "Cultural Landmark",
  user_id: usuarios.sample.id
)

photo = URI.open("https://res.cloudinary.com/dy2jex4vs/image/upload/v1690500942/glide/fnehktbjvzhhgppxs8mu.jpg")
location2.photo.attach(io: photo, filename: "location2.jpg", content_type: "image/jpg")
location2.save!
puts "location 2 created successfully"
puts "------------------------------------------------------------------------------------------------"
puts "Creating location 3"
location3 = Location.new(
  name: "Zócalo de la Ciudad de México",
  address: "Historic center of Mexico City, Centro, Mexico City, CDMX",
  city: "Mexico City",
  neighborhood: "Centro Histórico",
  latitude: 19.4327237109393,
  longitude: -99.1332127942179,
  category: "Public Space",
  subcategory: "Cultural Landmark",
  user_id: usuarios.sample.id
)
photo = URI.open("https://res.cloudinary.com/dy2jex4vs/image/upload/v1690500943/glide/ldtunglevgzdimpjz9nc.jpg")
location3.photo.attach(io: photo, filename: "location3.jpg", content_type: "image/jpg")
location3.save!
puts "location 3 created successfully"
puts "------------------------------------------------------------------------------------------------"
puts "Creating location 4"
location4 = Location.new(
  name: "Museo Soumaya",
  address: "Blvd. Miguel de Cervantes Saavedra, Granada, Miguel Hidalgo, 11529 Ciudad de México, CDMX",
  city: "Mexico City",
  neighborhood: "Polanco",
  latitude: 19.4417465812215,
  longitude: -99.2052984224106,
  category: "Public Space",
  subcategory: "Cultural Landmark",
  user_id: usuarios.sample.id
)
photo = URI.open("https://res.cloudinary.com/dy2jex4vs/image/upload/v1690500942/glide/rqy9riqhqcgukdj2wbsn.jpg")
location4.photo.attach(io: photo, filename: "location4.jpg", content_type: "image/jpg")
location4.save!
puts "location 4 created successfully"
puts "------------------------------------------------------------------------------------------------"
puts "Creating location 5"
location5 = Location.new(
  name: "Parque Masayoshi Ohira",
  address: "Corredores, Country Club Churubusco, Coyoacán, 04220 Ciudad de México, CDMX",
  city: "Mexico City",
  neighborhood: "Coyoacán",
  latitude: 19.3548390228373,
  longitude: -99.143142036065,
  category: "Public Space",
  subcategory: "Park",
  user_id: usuarios.sample.id
)
photo = URI.open("https://res.cloudinary.com/dy2jex4vs/image/upload/v1690511226/parque_masayoshi_ohira_n9ilpn.jpg")
location5.photo.attach(io: photo, filename: "location5.jpg", content_type: "image/jpg")
location5.save!
puts "location 5 created successfully"
puts "------------------------------------------------------------------------------------------------"
puts "Creating location 6"
location6 = Location.new(
  name: "Coyoacán",
  address: "Parque Centenario, Coyoacán TNT, Coyoacán, 04000 Ciudad de México, CDMX",
  city: "Mexico City",
  neighborhood: "Coyoacán",
  latitude: 19.3493254284818,
  longitude: -99.1632815818306,
  category: "Public Space",
  subcategory: "Neighborhood",
  user_id: usuarios.sample.id
)
photo = URI.open("https://res.cloudinary.com/dy2jex4vs/image/upload/v1690511227/coyoacan_zhbsi2.jpg")
location6.photo.attach(io: photo, filename: "location6.jpg", content_type: "image/jpg")
location6.save!
puts "location 6 created successfully"
puts "------------------------------------------------------------------------------------------------"
puts "Creating location 7"
location7 = Location.new(
  name: "Polanquito",
  address: "Av. Emilio Castelar 163, Polanco, Polanco III Secc, Miguel Hidalgo, 11560 Ciudad de México, CDMX",
  city: "Mexico City",
  neighborhood: "Polanco",
  latitude: 19.434477725148,
  longitude: -99.1968096364214,
  category: "Public Space",
  subcategory: "Neighborhood",
  user_id: usuarios.sample.id
)
photo = URI.open("https://res.cloudinary.com/dy2jex4vs/image/upload/v1690510837/polanquito_hml810.jpg")
location7.photo.attach(io: photo, filename: "location7.jpg", content_type: "image/jpg")
location7.save!
puts "location 7 created successfully"
puts "------------------------------------------------------------------------------------------------"
puts "Creating location 8"
location8 = Location.new(
  name: "Parque México",
  address: "Av México s/n, Hipódromo, Cuauhtémoc, 06100 Ciudad de México, CDMX",
  city: "Mexico City",
  neighborhood: "Condesa",
  latitude: 19.4116388045494,
  longitude: -99.1695555540498,
  category: "Public Space",
  subcategory: "Park",
  user_id: usuarios.sample.id
)
photo = URI.open("https://res.cloudinary.com/dy2jex4vs/image/upload/v1690510837/parque_mexico_cw50xn.jpg")
location8.photo.attach(io: photo, filename: "location8.jpg", content_type: "image/jpg")
location8.save!
puts "location 8 created successfully"
puts "------------------------------------------------------------------------------------------------"
puts "Creating location 9"
location9 = Location.new(
  name: "Roma",
  address: "Pl. Villa de Madrid, Roma Nte., Cuauhtémoc, 06700 Ciudad de México, CDMX",
  city: "Mexico City",
  neighborhood: "Roma",
  latitude: 19.4201817951754,
  longitude: -99.1663115046132,
  category: "Public Space",
  subcategory: "Neighborhood",
  user_id: usuarios.sample.id
)
photo = URI.open("https://res.cloudinary.com/dy2jex4vs/image/upload/v1690510893/roma_zuo9gr.jpg")
location9.photo.attach(io: photo, filename: "location9.jpg", content_type: "image/jpg")
location9.save!
puts "location 9 created successfully"
puts "------------------------------------------------------------------------------------------------"
puts "Creating location 10"
location10 = Location.new(
  name: "Salón Ríos",
  address: "Río Nilo 71, Cuauhtémoc, 06500 Ciudad de México, CDMX",
  city: "Mexico City",
  neighborhood: "Çuauhtémoc",
  latitude: 19.4274332414491,
  longitude: -99.171251546942,
  category: "Public Space",
  subcategory: "Neighborhood",
  user_id: usuarios.sample.id
)
photo = URI.open("https://res.cloudinary.com/dy2jex4vs/image/upload/v1690510972/salon_rios_l55cda.jpg")
location10.photo.attach(io: photo, filename: "location10.jpg", content_type: "image/jpg")
location10.save!
locations = [location1, location2, location3, location4, location5, location6, location7, location8, location9, location10]
puts "location 10 created successfully"
puts "Locations ready!"
puts "---------------------------------------------------------------"
puts "Seeding a couple of sweet REVIEWS!"
puts "---------------------------------------------------------------"
40.times do
  adjectives = [Faker::Adjective.positive, Faker::Adjective.negative].sample

  Review.create!(
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
    user_id: usuarios.sample.id,
    location_id: locations.sample.id
  )
end
puts "---------------------------------------------------------------"
puts "Hooray! We're done seeding the database! Good bye amigo!"
