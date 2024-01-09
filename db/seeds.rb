# Restaurants
Restaurant.create(name: "Sukiya", address: "Meguro", category: "japanese")
Restaurant.create(name: "Pizza-la", address: "Shinjuku", category: "italian")
Restaurant.create(name: "Spice8", address: "Shibuya", category: "chinese")
Restaurant.create(name: "fries", address: "Meguro", category: "belgian")
Restaurant.create(name: "pastaM", address: "Ikebukuro", category: "italian")


# Reviews
Review.create(content: "yummy yummy", rating: 4, restaurant: Restaurant.first)
