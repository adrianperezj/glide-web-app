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
  neighborhood: "Cuauhtémoc",
  latitude: 19.4274332414491,
  longitude: -99.171251546942,
  category: "Public Space",
  subcategory: "Neighborhood",
  user_id: usuarios.sample.id
)
photo = URI.open("https://res.cloudinary.com/dy2jex4vs/image/upload/v1690510972/salon_rios_l55cda.jpg")
location10.photo.attach(io: photo, filename: "location10.jpg", content_type: "image/jpg")
location10.save!
puts "location 10 created successfully"
puts "---------------------------------------------------------------"

# MORE CITIES >>>>

puts "Creating location 11"
location11 = Location.new(
  name: "Macroplaza",
  address: "Centro, 64000 Monterrey, Nuevo Leon",
  city: "Monterrey",
  neighborhood: "Mty Centro",
  latitude: 25.6695482871451,
  longitude: -100.310058777447,
  category: "Public Space",
  subcategory: "Park",
  user_id: usuarios.sample.id
  )
photo = URI.open("https://res.cloudinary.com/dy2jex4vs/image/upload/v1690662409/glide/macroplaza_hvzehc.jpg")
location11.photo.attach(io: photo, filename: "location11.jpg", content_type: "image/jpg")
location11.save!
puts "location 11 created successfully"
puts "---------------------------------------------------------------"
puts "Creating location 12"
location12 = Location.new(
  name: "Parque Fundidora",
  address: "Avenida Fundidora y, Adolfo Prieto S/N, Obrera, 64010 Monterrey, N.L.",
  city: "Monterrey",
  neighborhood: "Obrera",
  latitude: 25.6787624852064,
  longitude: -100.284297862164,
  category: "Public Space",
  subcategory: "Park",
  user_id: usuarios.sample.id
  )
photo = URI.open("https://res.cloudinary.com/dy2jex4vs/image/upload/v1690662504/glide/fundidora_kgj24k.jpg")
location12.photo.attach(io: photo, filename: "location12.jpg", content_type: "image/jpg")
location12.save!
puts "location 12 created successfully"
puts "---------------------------------------------------------------"
puts "Creating location 13"
location13 = Location.new(
  name: "Paseo Santa Lucía",
  address: "Avenida Fundidora y, Adolfo Prieto S/N, Obrera, 64010 Monterrey, N.L.",
  city: "Monterrey",
  neighborhood: "Obrera",
  latitude: 25.6752236070032,
  longitude: -100.287607289153,
  category: "Public Space",
  subcategory: "Cultural Landmark",
  user_id: usuarios.sample.id
  )
photo = URI.open("https://res.cloudinary.com/dy2jex4vs/image/upload/v1690662683/glide/paseo_santa_lucia_obobpl.jpg")
location13.photo.attach(io: photo, filename: "location13.jpg", content_type: "image/jpg")
location13.save!
puts "location 13 created successfully"
puts "---------------------------------------------------------------"
puts "Creating location 14"
location14 = Location.new(
  name: "Barrio Antiguo",
  address: "Dr. José Ma. Coss, Barrio Antiguo, Centro, 64000 Monterrey, N.L.",
  city: "Monterrey",
  neighborhood: "Mty Centro",
  latitude: 25.6661884851603,
  longitude: -100.3077349,
  category: "Public Space",
  subcategory: "Cultural Landmark",
  user_id: usuarios.sample.id
  )
photo = URI.open("https://res.cloudinary.com/dy2jex4vs/image/upload/v1690662844/glide/barrio_antiguo_monterrey_avnhsu.jpg")
location14.photo.attach(io: photo, filename: "location14.jpg", content_type: "image/jpg")
location14.save!
puts "location 14 created successfully"
puts "---------------------------------------------------------------"
puts "Creating location 15"
location15 = Location.new(
  name: "Templo de Santo Domingo Guzmán",
  address: "C. Macedonio Alcalá s/n, RUTA INDEPENDENCIA, Centro, 68000 Oaxaca de Juárez, Oax.",
  city: "Oaxaca",
  neighborhood: "Oax Centro",
  latitude: 17.0658761351728,
  longitude: -96.7232073162905,
  category: "Public Space",
  subcategory: "Cultural Landmark",
  user_id: usuarios.sample.id
  )
photo = URI.open("https://res.cloudinary.com/dy2jex4vs/image/upload/v1690663140/glide/templo_de_santo_domingo_oax_acp1xz.jpg")
location15.photo.attach(io: photo, filename: "location15.jpg", content_type: "image/jpg")
location15.save!
puts "location 15 created successfully"
puts "---------------------------------------------------------------"
puts "Creating location 16"
location16 = Location.new(
  name: "Jardín Etnobotánico de Oaxaca",
  address: "Reforma Sur n, RUTA INDEPENDENCIA, Centro, 68000 Oaxaca de Juárez, Oax.",
  city: "Oaxaca",
  neighborhood: "Oax Centro",
  latitude: 17.0662887365529,
  longitude: -96.7219608,
  category: "Public Space",
  subcategory: "Cultural Landmark",
  user_id: usuarios.sample.id
  )
photo = URI.open("https://res.cloudinary.com/dy2jex4vs/image/upload/v1690663265/glide/Jard%C3%ADn_Etnobot%C3%A1nico_de_Oaxaca_dt0nh4.jpg")
location16.photo.attach(io: photo, filename: "location16.jpg", content_type: "image/jpg")
location16.save!
puts "location 16 created successfully"
puts "---------------------------------------------------------------"
puts "Creating location 17"
location17 = Location.new(
  name: "Teatro Macedonio Alcalá",
  address: "Av. de la Independencia 900, Centro, 68000 Oaxaca de Juárez, Oax.",
  city: "Oaxaca",
  neighborhood: "Oax Centro",
  latitude: 17.0623140780383,
  longitude: -96.723147592614,
  category: "Public Space",
  subcategory: "Cultural Landmark",
  user_id: usuarios.sample.id
  )
photo = URI.open("https://res.cloudinary.com/dy2jex4vs/image/upload/v1690663439/glide/teatro_macedonio_alcala_q0th7g.jpg")
location17.photo.attach(io: photo, filename: "location17.jpg", content_type: "image/jpg")
location17.save!
puts "location 17 created successfully"
puts "---------------------------------------------------------------"
puts "Creating location 18"
location18 = Location.new(
  name: "Plaza de la Liberación",
  address: "Zona Centro, 44100 Guadalajara, Jalisco",
  city: "Guadalajara",
  neighborhood: "Gdl Centro",
  latitude: 20.6768448646015,
  longitude: -103.345767616235,
  category: "Public Space",
  subcategory: "Park",
  user_id: usuarios.sample.id
  )
photo = URI.open("https://res.cloudinary.com/dy2jex4vs/image/upload/v1690663559/glide/plaza_de_la_liberacion_fj1zq7.jpg")
location18.photo.attach(io: photo, filename: "location18.jpg", content_type: "image/jpg")
location18.save!
puts "location 18 created successfully"
puts "---------------------------------------------------------------"
puts "Creating location 19"
location19 = Location.new(
  name: "Plaza de los Mariachis",
  address: "C. Álvaro Obregón 23, San Juan de Dios, 44360 Guadalajara, Jal.",
  city: "Guadalajara",
  neighborhood: "San Juan de Dios",
  latitude: 20.6758337795665,
  longitude: -103.341794807385,
  category: "Public Space",
  subcategory: "Park",
  user_id: usuarios.sample.id
  )
photo = URI.open("https://res.cloudinary.com/dy2jex4vs/image/upload/v1690663669/glide/plaza-de-los-mariachis_pwjaw0.jpg")
location19.photo.attach(io: photo, filename: "location19.jpg", content_type: "image/jpg")
location19.save!
puts "location 19 created successfully"
puts "---------------------------------------------------------------"
puts "Creating location 20"
location20 = Location.new(
  name: "Teatro Degollado",
  address: "C. Degollado s/n, Zona Centro, 44100 Guadalajara, Jal.",
  city: "Guadalajara",
  neighborhood: "Gdl Centro",
  latitude: 20.6775591941385,
  longitude: -103.34487512505,
  category: "Public Space",
  subcategory: "Cultural Landmark",
  user_id: usuarios.sample.id
  )
photo = URI.open("https://res.cloudinary.com/dy2jex4vs/image/upload/v1690663757/glide/teatro_degollado_ihshqb.jpg")
location20.photo.attach(io: photo, filename: "location20.jpg", content_type: "image/jpg")
location20.save!
puts "location 20 created successfully"
puts "---------------------------------------------------------------"
puts "Creating location 21"
location21 = Location.new(
  name: "Plaza de Mayo",
  address: "Av. Hipólito Yrigoyen s/n, C1087 CABA, Argentina",
  city: "Buenos Aires",
  neighborhood: "Centro Buenos Aires",
  latitude: -34.6078545349158,
  longitude: -58.3724548613744,
  category: "Public Space",
  subcategory: "Park",
  user_id: usuarios.sample.id
  )
photo = URI.open("https://res.cloudinary.com/dy2jex4vs/image/upload/v1690950790/glide/plaza-de-mayo-buenos-aires_aqufhw.jpg")
location21.photo.attach(io: photo, filename: "location21.jpg", content_type: "image/jpg")
location21.save!
puts "location 21 created successfully"
puts "---------------------------------------------------------------"
puts "Creating location 22"
location22 = Location.new(
  name: "Teatro Colón",
  address: "Cerrito 628, C1010AAN CABA, Argentina",
  city: "Buenos Aires",
  neighborhood: "Centro Buenos Aires",
  latitude: -34.6003156902759,
  longitude: -58.3837933920616,
  category: "Public Space",
  subcategory: "Cultural Landmark",
  user_id: usuarios.sample.id
  )
photo = URI.open("https://res.cloudinary.com/dy2jex4vs/image/upload/v1690950938/glide/teatro-colon_qroehs.jpg")
location22.photo.attach(io: photo, filename: "location22.jpg", content_type: "image/jpg")
location22.save!
puts "location 22 created successfully"
puts "---------------------------------------------------------------"
puts "Creating location 23"
location23 = Location.new(
  name: "Cementerio de la Recoleta",
  address: "Junín 1760, C1113 CABA, Argentina",
  city: "Buenos Aires",
  neighborhood: "Barrio Norte",
  latitude: -34.5866572859258,
  longitude: -58.3928696693134,
  category: "Public Space",
  subcategory: "Cultural Landmark",
  user_id: usuarios.sample.id
  )
photo = URI.open("https://res.cloudinary.com/dy2jex4vs/image/upload/v1690951171/glide/cementerio-de-la-recoleta_cof7cn.jpg")
location23.photo.attach(io: photo, filename: "location23.jpg", content_type: "image/jpg")
location23.save!
puts "location 23 created successfully"
puts "---------------------------------------------------------------"
puts "Creating location 24"
location24 = Location.new(
  name: "Castillo Wulff",
  address: "Viña del Mar, Valparaíso, Chile",
  city: "Viña del Mar",
  neighborhood: "Miramar",
  latitude: -33.0182622109887,
  longitude: -71.564982461373,
  category: "Public Space",
  subcategory: "Cultural Landmark",
  user_id: usuarios.sample.id
  )
photo = URI.open("https://res.cloudinary.com/dy2jex4vs/image/upload/v1690951646/glide/wulff-castle_lnhmpd.jpg")
location24.photo.attach(io: photo, filename: "location24.jpg", content_type: "image/jpg")
location24.save!
puts "location 24 created successfully"
puts "---------------------------------------------------------------"
puts "Creating location 25"
location25 = Location.new(
  name: "Museo Francisco Fonck",
  address: "4 Nte. 784, 2520763 Viña del Mar, Valparaíso, Chile",
  city: "Viña del Mar",
  neighborhood: "Miramar",
  latitude: -33.0194324941852,
  longitude: -71.5498386693134,
  category: "Public Space",
  subcategory: "Cultural Landmark",
  user_id: usuarios.sample.id
  )
photo = URI.open("https://res.cloudinary.com/dy2jex4vs/image/upload/v1690951783/glide/museo-fonck_xpg6sp.jpg")
location25.photo.attach(io: photo, filename: "location25.jpg", content_type: "image/jpg")
location25.save!
puts "location 25 created successfully"
puts "---------------------------------------------------------------"
puts "Creating location 26"
location26 = Location.new(
  name: "Muelle Vergara",
  address: "Avenida San Martín 925 entre playas Acapulco, El Sol, Viña del Mar, Valparaíso, Chile",
  city: "Viña del Mar",
  neighborhood: "Miramar",
  latitude: -33.0111381637284,
  longitude: -71.5548353767163,
  category: "Public Space",
  subcategory: "Cultural Landmark",
  user_id: usuarios.sample.id
  )
photo = URI.open("https://res.cloudinary.com/dy2jex4vs/image/upload/v1690951974/glide/muelle-vergara-2_frdgdj.jpg")
location26.photo.attach(io: photo, filename: "location26.jpg", content_type: "image/jpg")
location26.save!
puts "location 26 created successfully"
puts "---------------------------------------------------------------"
puts "Creating location 27"
location27 = Location.new(
  name: "Parque Bicentenario",
  address: "Av. Bicentenario 3236, Vitacura, Región Metropolitana, Chile",
  city: "Santiago",
  neighborhood: "Jardín del Este",
  latitude: -33.3978933157514,
  longitude: -70.6024804,
  category: "Public Space",
  subcategory: "Park",
  user_id: usuarios.sample.id
  )
photo = URI.open("https://res.cloudinary.com/dy2jex4vs/image/upload/v1690951974/glide/muelle-vergara-2_frdgdj.jpg")
location27.photo.attach(io: photo, filename: "location27.jpg", content_type: "image/jpg")
location27.save!
puts "location 27 created successfully"
puts "---------------------------------------------------------------"
puts "Creating location 28"
location28 = Location.new(
  name: "Palacio de La Moneda",
  address: "Moneda S/N, Santiago, Región Metropolitana, Chile",
  city: "Santiago",
  neighborhood: "Región Metropolitana",
  latitude: -33.4421570850498,
  longitude: -70.6536982386269,
  category: "Public Space",
  subcategory: "Cultural Landmark",
  user_id: usuarios.sample.id
  )
photo = URI.open("https://res.cloudinary.com/dy2jex4vs/image/upload/v1691025987/glide/palacio-de-la-moneda_lijdkc.jpg")
location28.photo.attach(io: photo, filename: "location28.jpg", content_type: "image/jpg")
location28.save!
puts "location 28 created successfully"
puts "---------------------------------------------------------------"
puts "Creating location 29"
location29 = Location.new(
  name: "Viña Cousiño Macul",
  address: "Av. Quilín 7100, 7921077 Penalolen, Peñalolén, Región Metropolitana, Chile",
  city: "Santiago",
  neighborhood: "Peñalolén",
  latitude: -33.4979836046138,
  longitude: -70.5628559074029,
  category: "Public Space",
  subcategory: "Cultural Landmark",
  user_id: usuarios.sample.id
  )
photo = URI.open("https://res.cloudinary.com/dy2jex4vs/image/upload/v1691026302/glide/cousino_macul_ixe2ef.jpg")
location29.photo.attach(io: photo, filename: "location29.jpg", content_type: "image/jpg")
location29.save!
puts "location 29 created successfully"
puts "---------------------------------------------------------------"
puts "Creating location 30"
location30 = Location.new(
  name: "Plaza de Bolívar",
  address: "Cra. 7 #11-10, La Candelaria, Bogotá, Colombia",
  city: "Bogotá",
  neighborhood: "La Candelaria",
  latitude: 4.59933974974781,
  longitude: -74.0761293306871,
  category: "Public Space",
  subcategory: "Cultural Landmark",
  user_id: usuarios.sample.id
  )
photo = URI.open("https://res.cloudinary.com/dy2jex4vs/image/upload/v1691027016/glide/plaza-de-bolivar_iwaonj.jpg")
location30.photo.attach(io: photo, filename: "location30.jpg", content_type: "image/jpg")
location30.save!
puts "location 30 created successfully"
puts "---------------------------------------------------------------"
puts "Creating location 31"
location31 = Location.new(
  name: "Museo Botero",
  address: "Cl. 11 #4-41, Bogotá, Colombia",
  city: "Bogotá",
  neighborhood: "La Candelaria",
  latitude: 4.59742841383017,
  longitude: -74.0734929460298,
  category: "Public Space",
  subcategory: "Cultural Landmark",
  user_id: usuarios.sample.id
  )
photo = URI.open("https://res.cloudinary.com/dy2jex4vs/image/upload/v1691027016/glide/plaza-de-bolivar_iwaonj.jpg")
location31.photo.attach(io: photo, filename: "location31.jpg", content_type: "image/jpg")
location31.save!
puts "location 31 created successfully"
puts "---------------------------------------------------------------"
puts "Creating location 32"
location32 = Location.new(
  name: "La Candelaria",
  address: "Cl. 7, Bogotá, Colombia",
  city: "Bogotá",
  neighborhood: "La Candelaria",
  latitude: 4.59255157758106,
  longitude: -74.0718117333969,
  category: "Public Space",
  subcategory: "Neighborhood",
  user_id: usuarios.sample.id
  )
photo = URI.open("https://res.cloudinary.com/dy2jex4vs/image/upload/v1691027356/glide/la-candelaria_gdt7dl.jpg")
location32.photo.attach(io: photo, filename: "location32.jpg", content_type: "image/jpg")
location32.save!
puts "location 32 created successfully"
puts "---------------------------------------------------------------"
puts "Creating location 33"
location33 = Location.new(
  name: "Castillo San Felipe de Barajas",
  address: "Avenida Antonio de Arévalo. Carrera 17., Cl. 32 #17-85, Cartagena de Indias, Bolívar, Colombia",
  city: "Cartagena de Indias",
  neighborhood: "Pie del Cerro",
  latitude: 10.4234767654927,
  longitude: -75.5393568306865,
  category: "Public Space",
  subcategory: "Cultural Landmark",
  user_id: usuarios.sample.id
  )
photo = URI.open("https://res.cloudinary.com/dy2jex4vs/image/upload/v1691028078/glide/castillo-san-felipe-de-barajas_xnxy5y.jpg")
location33.photo.attach(io: photo, filename: "location33.jpg", content_type: "image/jpg")
location33.save!
puts "location 33 created successfully"
puts "---------------------------------------------------------------"
puts "Creating location 34"
location34 = Location.new(
  name: "Las Botas Viejas",
  address: "Cl. 31 #18B-55, Pie Del Cerro, Cartagena de Indias, Bolívar, Colombia",
  city: "Cartagena de Indias",
  neighborhood: "Pie del Cerro",
  latitude: 10.422221765689,
  longitude: -75.5376345,
  category: "Public Space",
  subcategory: "Cultural Landmark",
  user_id: usuarios.sample.id
  )
photo = URI.open("https://res.cloudinary.com/dy2jex4vs/image/upload/v1691103079/glide/botas-viejas_ez0cb8.jpg")
location34.photo.attach(io: photo, filename: "location34.jpg", content_type: "image/jpg")
location34.save!
puts "location 34 created successfully"
puts "---------------------------------------------------------------"
puts "Creating location 35"
location35 = Location.new(
  name: "Monumento Torre del Reloj",
  address: "Boca del Puente, El Centro, Cartagena de Indias, Bolívar, Colombia",
  city: "Cartagena de Indias",
  neighborhood: "El Centro",
  latitude: 10.4240971887137,
  longitude: -75.5493899613744,
  category: "Public Space",
  subcategory: "Cultural Landmark",
  user_id: usuarios.sample.id
  )
photo = URI.open("https://res.cloudinary.com/dy2jex4vs/image/upload/v1691103370/glide/torre-del-reloj_ydl2bm.jpg")
location35.photo.attach(io: photo, filename: "location35.jpg", content_type: "image/jpg")
location35.save!
puts "location 35 created successfully"
puts "---------------------------------------------------------------"
puts "Creating location 36"
location36 = Location.new(
  name: "Southwest University Park",
  address: "1 Ballpark Plaza, El Paso, TX 79901, United States",
  city: "El Paso",
  neighborhood: "Downtown El Paso",
  latitude: 31.7603355447219,
  longitude: -106.492786192061,
  category: "Public Space",
  subcategory: "Park",
  user_id: usuarios.sample.id
  )
photo = URI.open("https://res.cloudinary.com/dy2jex4vs/image/upload/v1691103599/glide/southwet-university-partk_lwz8oa.jpg")
location36.photo.attach(io: photo, filename: "location36.jpg", content_type: "image/jpg")
location36.save!
puts "location 36 created successfully"
puts "---------------------------------------------------------------"
puts "Creating location 37"
location37 = Location.new(
  name: "Scenic Drive - Overlook",
  address: "Scenic Dr, El Paso, TX 79902, United States",
  city: "El Paso",
  neighborhood: "Golden Hill",
  latitude: 31.7833506431612,
  longitude: -106.479653069312,
  category: "Public Space",
  subcategory: "Cultural Landmark",
  user_id: usuarios.sample.id
  )
photo = URI.open("https://res.cloudinary.com/dy2jex4vs/image/upload/v1691104990/glide/scenic-drive-overlook_fyojrm.jpg")
location37.photo.attach(io: photo, filename: "location37.jpg", content_type: "image/jpg")
location37.save!
puts "location 37 created successfully"
puts "---------------------------------------------------------------"
puts "Creating location 38"
location38 = Location.new(
  name: "Magoffin Home State Historic Site",
  address: "1120 Magoffin Ave, El Paso, TX 79901, United States",
  city: "El Paso",
  neighborhood: "Magoffin",
  latitude: 31.763125641913,
  longitude: -106.476465215876,
  category: "Public Space",
  subcategory: "Cultural Landmark",
  user_id: usuarios.sample.id
  )
photo = URI.open("https://res.cloudinary.com/dy2jex4vs/image/upload/v1691105265/glide/magoffin-home-state_pm4tpf.jpg")
location38.photo.attach(io: photo, filename: "location38.jpg", content_type: "image/jpg")
location38.save!
puts "location 38 created successfully"
puts "---------------------------------------------------------------"
puts "Creating location 39"
location39 = Location.new(
  name: "Klyde Warren Park",
  address: "2012 Woodall Rodgers Fwy, Dallas, TX 75201, United States",
  city: "Dallas",
  neighborhood: "City Center District",
  latitude: 32.7895978264718,
  longitude: -96.8014094834494,
  category: "Public Space",
  subcategory: "Park",
  user_id: usuarios.sample.id
  )
photo = URI.open("https://res.cloudinary.com/dy2jex4vs/image/upload/v1691105512/glide/klyde-warren-park_m5pku8.jpg")
location39.photo.attach(io: photo, filename: "location39.jpg", content_type: "image/jpg")
location39.save!
puts "location 39 created successfully"
puts "---------------------------------------------------------------"
puts "Creating location 40"
location40 = Location.new(
  name: "The Dallas World Aquarium",
  address: "1801 N Griffin St, Dallas, TX 75202, United States",
  city: "Dallas",
  neighborhood: "City Center District",
  latitude: 32.7839968571341,
  longitude: -96.8048430158767,
  category: "Public Space",
  subcategory: "Park",
  user_id: usuarios.sample.id
  )
photo = URI.open("https://res.cloudinary.com/dy2jex4vs/image/upload/v1691105658/glide/dallas-world-aquarium_hoqswq.jpg")
location40.photo.attach(io: photo, filename: "location40.jpg", content_type: "image/jpg")
location40.save!
puts "location 40 created successfully"
puts "---------------------------------------------------------------"
puts "Creating location 41"
location41 = Location.new(
  name: "Perot Museum of Nature and Science",
  address: "2201 N Field St, Dallas, TX 75201, United States",
  city: "Dallas",
  neighborhood: "Harwood District",
  latitude: 32.787754662577,
  longitude: -96.8064556539692,
  category: "Public Space",
  subcategory: "Park",
  user_id: usuarios.sample.id
  )
photo = URI.open("https://res.cloudinary.com/dy2jex4vs/image/upload/v1691105766/glide/perot-museum_revoa3.jpg")
location41.photo.attach(io: photo, filename: "location41.jpg", content_type: "image/jpg")
location41.save!
puts "location 41 created successfully"
puts "---------------------------------------------------------------"
locations = [location1, location2, location3, location4, location5, location6, location7, location8, location9, location10, location11, location12, location13, location14, location15, location16, location17, location18, location19, location20, location21, location22, location23, location24, location25, location26, location27, location28, location29, location30, location31, location32, location33, location34, location35, location36, location37, location38, location39, location40, location41]

puts "Locations ready!"
puts "Seeding a couple of sweet REVIEWS, bud!"
puts "---------------------------------------------------------------"
120.times do
  adjectives = [Faker::Adjective.positive, Faker::Adjective.negative].sample

  Review.create!(
    title: adjectives.upcase,
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
