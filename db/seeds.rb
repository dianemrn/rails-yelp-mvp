# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
puts "Cleaning database..."
Restaurant.destroy_all

puts "Creating restaurants..."
dishoom = { name: "Dishoom", address: "7 Boundary St, London E2 7JE", category: "italian"}
pizza_east =  { name: "Pizza East", address: "56A Shoreditch High St, London E1 6PQ", category: "italian"}

[ dishoom, pizza_east ].each do |attributes|
  restaurant = Restaurant.create!(attributes)
  puts "Created #{restaurant.name}"
end
#   puts "creating reviews..."
# yummy = {content: "yummy", rating: 5, restaurant_id: Restaurant.first}
# bof = {content: "bof", rating: 1, restaurant_id: Restaurant.first}

#  [ yummy, bof].each do |attributes|
#   review = Review.create!(attributes)
#   puts "Created #{review.content}"

# end
# puts "Finished!"
