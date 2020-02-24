# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Event.destroy_all
8.times do |t|
    user = Event.create(title: "Plongée", description: "tres jolie plongeoire pour la miff", start_date: 12/12/12, price: 25, location: "paris")
    
end
puts "8 users et items on été créé"
