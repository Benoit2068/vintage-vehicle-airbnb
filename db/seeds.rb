# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
require "open-uri"
require "nokogiri"

User.destroy_all
Vehicle.destroy_all

user = User.new(email: "benoit@gmail.com", password: "123456")
user.save

ford_Mustang = { name: "Ford Mustang Fastback 1967", description: "Code J de 1967 avec son V8 351 Cleveland, Magnifique peinture Orange Candy, Moteur V8 5,8l 351 Cleveland de 290cv,Culasses Edelbrock, Allumage électronique MSD, Boite mécanique 4 rapports, Freins à disques avant, Intérieur noir. ", price: 250}
chevrolet_camaro = { name: "Chevrolet Camaro 1966", description: "350 V8 engine  –  250 horsepower –   Automatic Transmission  –  updated front and rear suspension  – power steering – updated power front disc brakes – modern radial tires with wider rims  –  fits 2 people  in front seats, 2 more in the smaller rear seats or 3 smaller people ", price: 300}
citroen_traction = { name: "CITROEN Traction 7 C - 1936", description: "Citroën Traction 1 ère série Type : 11 TA7C De nombreux travaux ont été effectués sur cette voiture, notamment le remplacement des cardans homocinétiques, roulement de roues, silentbloc, cylindres de freins, pompe à essence etc.
Cette voiture a donc été remise à niveau et modernisée de telle manière qu'elle soit fiable et utilisable régulièrement. ", price: 150}
toyota_land_cruiser  = { name: "Toyota Land Cruiser BJ 43", description: "Notre BJ 43 est très certainement l'un des plus beaux exemplaires proposés sur le marché. Une telle affirmation est justifiée par le travail réalisé par les ateliers Teseven Toyota Classic qui ont développé un savoir-faire unique dans la restauration et l'optimisation des Land Cruiser. Mis en circulation le 26 mars 1981, il vient donc tout juste de bénéficier d'une restauration intégrale", price: 150}

puts "creating vehicles"
new_vehicle = Vehicle.new(ford_Mustang)
new_vehicle.user = user
new_vehicle.photo.attach(io: File.open(Rails.root.join("app/assets/images/Ford-Mustang.jpg")), filename: 'mustang.JPG', content_type: 'image/png')
new_vehicle.save
puts "#{new_vehicle.name} is created"

new_vehicle = Vehicle.new(chevrolet_camaro)
new_vehicle.user = user
new_vehicle.photo.attach(io: File.open(Rails.root.join("app/assets/images/CAMARO-SS-1967.JPG")), filename: 'camaro.JPG', content_type: 'image/png')
new_vehicle.save
puts "#{new_vehicle.name} is created"

new_vehicle = Vehicle.new(citroen_traction)
new_vehicle.user = user
new_vehicle.photo.attach(io: File.open(Rails.root.join("app/assets/images/CITROEN Traction 7 C - 1936.jpg")), filename: 'traction.JPG', content_type: 'image/png')
new_vehicle.save
puts "#{new_vehicle.name} is created"

new_vehicle = Vehicle.new(toyota_land_cruiser)
new_vehicle.user = user
new_vehicle.photo.attach(io: File.open(Rails.root.join("app/assets/images/toyota land cruser.jpg")), filename: 'toyota.JPG', content_type: 'image/png')
new_vehicle.save
puts "#{new_vehicle.name} is created"


# url = "https://driveshare.com/search?q="

# html_file = URI.open(url).read
# html_doc = Nokogiri::HTML(html_file)

# html_doc.search(".card__name").each do |element|
#   puts element.text.strip
  # puts element.attribute("href").value

end

puts "Finished!"
