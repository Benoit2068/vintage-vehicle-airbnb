# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
require "open-uri"
require "nokogiri"

Reservation.destroy_all
User.destroy_all
Vehicle.destroy_all

user = User.new(email: "benoit@gmail.com", password: "123456")
user.save

ford_Mustang = { name: "Ford Mustang Fastback 1967", price: 250, address: "Rue Saint-Pierre 4, 1003 Lausanne", description: "Code J de 1967 avec son V8 351 Cleveland, Magnifique peinture Orange Candy, Moteur V8 5,8l 351 Cleveland de 290cv,Culasses Edelbrock, Allumage électronique MSD, Boite mécanique 4 rapports, Freins à disques avant, Intérieur noir. "}
chevrolet_camaro = { name: "Chevrolet Camaro 1966", price: 300, address: "Avenue du Temple 2, 1012 Lausanne",description: "350 V8 engine  –  250 horsepower –   Automatic Transmission  –  updated front and rear suspension  – power steering – updated power front disc brakes – modern radial tires with wider rims  –  fits 2 people  in front seats, 2 more in the smaller rear seats or 3 smaller people "}
citroen_traction = { name: "CITROEN Traction 7 C - 1936", price: 150, address: "Rue des Prés-du-Lac 16, 1400 Yverdon-les-Bains",description: "Citroën Traction 1 ère série Type : 11 TA7C De nombreux travaux ont été effectués sur cette voiture, notamment le remplacement des cardans homocinétiques, roulement de roues, silentbloc, cylindres de freins, pompe à essence etc.
Cette voiture a donc été remise à niveau et modernisée de telle manière qu'elle soit fiable et utilisable régulièrement. "}
toyota_land_cruiser  = { name: "Toyota Land Cruiser BJ 43", price: 150 , address: "Rue de l'Hôpital 7, 1700 Fribourg", description: "Notre BJ 43 est très certainement l'un des plus beaux exemplaires proposés sur le marché. Une telle affirmation est justifiée par le travail réalisé par les ateliers Teseven Toyota Classic qui ont développé un savoir-faire unique dans la restauration et l'optimisation des Land Cruiser. Mis en circulation le 26 mars 1981, il vient donc tout juste de bénéficier d'une restauration intégrale"}
mercedes_Benz_280SL = { name: "1970 Mercedes-Benz 280SL" , price: 300, address: "Rue de Grise-Pierre 3, 2000 Neuchâtel", description: "The clean, elegant lines, perfect proportions and quality craftsmanship made the 280SL a popular design. A 2.8-liter Inline-six engine provides the power and factory disc brakes are on all four wheels. The blue leather interior has comfort in mind with plush, supportive seats and large readable gauges."}
volkswagen_transporter = { name: "Volkswagen Transporter", price: 200, address: "Im Stückler 19, 8048 Zürich", description: "Completely refurbished in and out. Original, original. Large enough engine to cruise safely in hi ways. Shows great. Very classy interior. Single stage original VW color paint. Flawless finish." }
porsche_intermeccanica_356D = { name: "Porsche Intermeccanica 356D", address: "Rue du Village 18, 1882 Gryon", price: 350, description: "The car and you must agree when it is time to shift into the next gear, how close to hug that corner, and when to just relax and put the top down. In this partnership, you make one another look really good!"}
ford_model_B = { name: "Ford Model B", price: 200, address: "Rue du Village 18, 1882 Gryon", description: "Drive into Memory Lane with this professionally built ROADSTER. Top on or top off, you will be the hit of the party driving up in this beautiful rod. Full leather interior, modern 500 hp engine and modern disc brakes combine with the high luster black exterior to make the 'Roadster of your Dreams'. Professionally maintained, and ready for you at a moment's notice. Can deliver to your event or venue. Safe, Reliable and Authentic - for the most discerning."}
austin_Healey_3000 = { name: "Austin Healey 3000", price: 250, address: "Baumgartenweg 15, 4124 Schönenbuch", description: "Please note: this is an automatic car. No stick! Enjoy driving down beautiful Highway 1 in this 1963 Austin-Healey 3000 BJ7 Mk II is powered by a 302ci Ford V8 mated to a three-speed automatic transmission. The car is finished in blue over blue leather and features 15″ wire wheels, chrome bumpers with overriders, a wood-rimmed steering wheel, a Sony stereo, aux port to play your favorite road trip tunes."}
citroen_2CV = { name: "Citroen 2CV", price: 150, address: "Avenue du 1er-Mai 11, 1020 Renens", description: "Bonjour! Its time to take a trip around the Monterey Bay as if you were puttering along the French backroads. Spoil your senses as you drive into Carmel-By-The Sea in search of your perfect French delicatessen. Trust us, there are plenty of wonderful spots to park along Ocean Avenue and fall head over heels. The romance is real, and the love affair is by design. We know that tucking a couple into a tiny four door buggy like the 2CV, also known as the deux chevaux, is sure fire way to light some sparks. Our Citroen may only push out 18hp with its two cylinders, but when you're falling back in love, you'll absolutely want to take your time."}


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

new_vehicle = Vehicle.new(mercedes_Benz_280SL)
new_vehicle.user = user
new_vehicle.photo.attach(io: File.open(Rails.root.join("app/assets/images/mercedes_Benz_280SL.jpg")), filename: 'mercedes_Benz_280SL.JPG', content_type: 'image/png')
new_vehicle.save
puts "#{new_vehicle.name} is created"

new_vehicle = Vehicle.new(volkswagen_transporter)
new_vehicle.user = user
new_vehicle.photo.attach(io: File.open(Rails.root.join("app/assets/images/volkswagen_transporter.jpg")), filename: 'volkswagen_transporter.jpg', content_type: 'image/png')
new_vehicle.save
puts "#{new_vehicle.name} is created"

new_vehicle = Vehicle.new(porsche_intermeccanica_356D)
new_vehicle.user = user
new_vehicle.photo.attach(io: File.open(Rails.root.join("app/assets/images/porsche_intermeccanica_356D.jpg")), filename: 'porsche_intermeccanica_356D.jpg', content_type: 'image/png')
new_vehicle.save
puts "#{new_vehicle.name} is created"

new_vehicle = Vehicle.new(ford_model_B)
new_vehicle.user = user
new_vehicle.photo.attach(io: File.open(Rails.root.join("app/assets/images/ford_model_B.jpg")), filename: 'ford_model_B.jpg', content_type: 'image/png')
new_vehicle.save
puts "#{new_vehicle.name} is created"

new_vehicle = Vehicle.new(austin_Healey_3000)
new_vehicle.user = user
new_vehicle.photo.attach(io: File.open(Rails.root.join("app/assets/images/Austin Healey 3000.jpg")), filename: 'Austin Healey 3000.jpg', content_type: 'image/png')
new_vehicle.save
puts "#{new_vehicle.name} is created"

new_vehicle = Vehicle.new(citroen_2CV)
new_vehicle.user = user
new_vehicle.photo.attach(io: File.open(Rails.root.join("app/assets/images/citroen 2CV.jpg")), filename: 'citroen 2CV.jpg', content_type: 'image/png')
new_vehicle.save
puts "#{new_vehicle.name} is created"


puts "Finished!"


# ----------------------------TEST SEED WITH SCRAPING-----------------------------
# url = "https://drivevinty.com/s/?rental_type=chauffeured&decade=1960&decade=1930&decade=1940&decade=1950&decade=1970&decade=1980&sort=verified&page=1"
# url = "https://driveshare.com/search/"

# html_file = URI.open(url).read
# # p html_file
# html_doc = Nokogiri::HTML(html_file)
# # p html_doc

# html_doc.search('.card').each do |element|
#   puts element
#   name = element.search(".card__name").text
#   p name
  #   description_url = element.search(".car-item-container").first.attribute("href").value.strip
  # description_html = URI.open(description_url).read
  # description_doc = Nokogiri::HTML(description_html, nil, "utf-8")
  # description = description_doc.search(".car-detail-header-description-content").find do |element2|
  #   element2.text.strip
# end
