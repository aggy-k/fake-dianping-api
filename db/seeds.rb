require 'faker'

Restaurant.destroy_all

20.times do |n|
  restaurant = Restaurant.create!(
      name: Faker::Restaurant.name,
      description: Faker::Restaurant.description,
      address: Faker::Address.street_address,
      city: Faker::Address.city,
      country: Faker::Address.country,
      longitude: Faker::Address.longitude,
      latitude: Faker::Address.latitude,
      phone: Faker::PhoneNumber.cell_phone,
      image: "https://loremflickr.com/g/640/480/restaurants?random=#{n}"
    )
  puts "Created restaurant #{restaurant.name}."
  rand(1..9).times do |n|
    Review.create!(
        content: Faker::Restaurant.review,
        rating: rand(1..5),
        restaurant: restaurant
      )
  end
  puts "Created #{restaurant.reviews.count} reviews."
end
