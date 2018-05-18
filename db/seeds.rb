require 'faker'

House.destroy_all


photos = [
  "https://i.skyrock.net/6816/19686816/pics/3146267874_1_2_jLIQNqp3.jpg",
  "http://images.lpcdn.ca/641x427/200712/19/83437-maison-promoteur-louis-xiv-blainville.jpg",
  "http://www.atlantico.fr/sites/atlantico.fr/files/styles/une/public/images/2014/04/article-2550623-1b1ea3d200000578-573_634x399.jpg",
  "https://i.skyrock.net/6816/19686816/pics/3146267874_1_2_jLIQNqp3.jpg",
  "http://images.lpcdn.ca/641x427/200712/19/83437-maison-promoteur-louis-xiv-blainville.jpg",
  "http://www.atlantico.fr/sites/atlantico.fr/files/styles/une/public/images/2014/04/article-2550623-1b1ea3d200000578-573_634x399.jpg"
]


puts "Creating #{photos.count} fake houses..."
photos.each do |photo|

 house = House.new(
   user: User.last,
   name:    Faker::Hobbit.location,
   description: Faker::StarWars.wookiee_sentence,
   address: "#{Faker::Address.street_address}, #{Faker::Address.city}",
   availability: true,
   price_per_night: (300..800).to_a.sample,
   house_picture: photo
 )
 house.save!
end
puts 'Finished!'
