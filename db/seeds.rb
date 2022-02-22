# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
puts "creating 3 vehicles"

user = User.new(email: "benoit@gmail.com", password: "123456")
user.save

deuxCV = { name: "2 CV", description: "magnifique voiture avec un tenue de route incroyable.", price: 150}
mobylette = { name: "103 SP", description: "Le Peugeot 103 est un cyclomoteur lancé en France en 1971, plus puissant, confortable et plus cher que le 102 qu'il remplacera.", price: 50}
DS = { name: "DS 23 IE BVH 1973", description: "Entièrement révisée. Très belle voiture avec son intérieur d'origine.", price: 250}

[deuxCV, mobylette, DS].each do |attributes|

  vehicle = Vehicle.new(attributes)
  vehicle.user = user
  vehicle.save
  puts "#{vehicle.name} is created"
end
puts "Finished!"
