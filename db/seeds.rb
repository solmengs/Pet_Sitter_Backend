# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
require "faker"



20.times do
    seed = (0...50).map { ('a'..'z').to_a[rand(26)] }.join
 Owner.create(name: Faker::Name.first_name,  address: Faker::Address.street_address, user_image: "https://picsum.photos/seed/#{seed}/250", background_image: "https://picsum.photos/seed/#{seed}/250") 
end
puts "owners created"

35.times do 
    seed = (0...50).map { ('a'..'z').to_a[rand(26)] }.join
    pet_type=["cat", "dog", "lizard", "ferret","bunny"]
    Pet.create(name: Faker::FunnyName.name, image: "https://picsum.photos/seed/#{seed}/250", animal: pet_type.sample, age: rand(0..5), owner_id: rand(1..20) )
end 
puts "pets created"
 
50.times do
    note_category=["Food", "Care","Activity", "Other"]
    Note.create(description: Faker::Lorem.paragraph, category: note_category.sample, priority: rand(1..5), pet_id: rand(1..35) )
end 
puts "notes created"

