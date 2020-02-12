require 'faker'

Restaurant.destroy_all

category = ["chinese", "italian", "japanese", "french", "belgian"]

puts "Creating restaurants..."
10.times do
  restaurant = Restaurant.create(
    name: Faker::Restaurant.name,
    address: Faker::Address.full_address,
    category: category.sample,
    phone_number: Faker::PhoneNumber.cell_phone_with_country_code
  )
end
puts "Finished!"

