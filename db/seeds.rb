# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

require 'faker'

puts 'Creating 10 fake houses...'
10.times do

  house = House.new(
    user: User.last,
    name:    Faker::Hobbit.location,
    description: Faker::StarWars.wookiee_sentence,
    address: "#{Faker::Address.street_address}, #{Faker::Address.city}",
    avaibility: true,
    price_per_night: (300..800).to_a.sample
  )
  house.save!
end
puts 'Finished!'
