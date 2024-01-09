require 'faker'

# Clear existing data
Review.destroy_all
Restaurant.destroy_all

# Create fake restaurants
10.times do
  restaurant = Restaurant.create!(
    name: Faker::Restaurant.name,
    address: Faker::Address.full_address,
    phone_number: Faker::PhoneNumber.phone_number,
    category: ["chinese", "italian", "japanese", "french", "belgian"].sample,
    image_url: 'https://source.unsplash.com/random/300x200'
  )

  # Create fake reviews for each restaurant
  5.times do
    restaurant.reviews.create!(
      rating: Faker::Number.between(from: 1, to: 5),
      content: Faker::Lorem.paragraph(sentence_count: 2),
    )
  end
end
