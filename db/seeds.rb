# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end

puts "Cleaning database..."
Restaurant.destroy_all
Review.destroy_all

puts "Creating restaurants..."
cardeais = {name: "Cardeais", address: "Valinhos", category: 'french'}
madero = {name: "Madero", address: "Valinhos", category: 'italian'}
soho = {name: "Soho", address: "Cambuí, Campinas", category: 'japanese' }
marupiara = {name: "Marupiara", address: "Sousas", category: 'french' }
madureira = {name: "Madureira", address: "São Paulo", category: 'belgian' }

[cardeais, madero , soho, marupiara, madureira].each do |attributes|
  restaurant = Restaurant.create!(attributes)
  puts "Created #{restaurant.name}"
end
puts "Finished!"
