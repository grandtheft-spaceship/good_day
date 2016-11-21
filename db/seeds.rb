# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

5.times do 
  User.create(username: Faker::Internet.user_name, email: Faker::Internet.email, password: 'password')
end

20.times do 
  Eatery.create(name: Faker::Company.name, address: Faker::Address.city, cuisine: Faker::StarWars.planet)
end

20.times do 
  Attraction.create(name: Faker::Company.name, location: Faker::Address.city)
end

Eatery.all.each do |eatery|
  Attraction.all.each do |attraction|
    Agenda.create(eatery_id: eatery.id, attraction_id: attraction.id, user_id: rand(1..5))
  end
end

