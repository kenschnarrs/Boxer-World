# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)


#  !!!
# PLEASE PUT ALL IMAGE ATTACHMENTS AT THE VERY BOTTOM
#  !!!

# Create a main sample user
User.create!(
    email: "bob@email.com",
    password: "something"
)

# Create sample items
item1 = Item.create!(
    name: "Adult Gloves",
    brand: "Nike",
    category: "Boxing Gloves",
    size: "Medium",
    isFeatured: true,
    num_in_stock: 50,
    price: 50.00,
    rating: 0
)


item2 = Item.create!(
    name: "Kid Gloves",
    brand: "Nike",
    category: "Boxing Gloves",
    size: "Small",
    isFeatured: true,
    num_in_stock: 50,
    price: 30.00,
    rating: 0
)


item3 = Item.create!(
  name: "Adult Gloves",
  brand: "Adidas",
  category: "Boxing Gloves",
  size: "Large",
  isFeatured: false,
  num_in_stock: 100,
  price: 50.00,
  rating: 4.5
)

# Item 2 (using the original format)
item4 = Item.create!(
  name: "Kid Gloves",
  brand: "Nike",
  category: "Boxing Gloves",
  size: "Small",
  isFeatured: true,
  num_in_stock: 50,
  price: 30.00,
  rating: 0
)

# Item 3
item5 = Item.create!(
  name: "Training Gloves",
  brand: "Everlast",
  category: "Boxing Gloves",
  size: "Medium",
  isFeatured: true,
  num_in_stock: 75,
  price: 40.00,
  rating: 3.8
)

# Item 4
item6 = Item.create!(
  name: "Competition Gloves",
  brand: "Title Boxing",
  category: "Boxing Gloves",
  size: "Large",
  isFeatured: false,
  num_in_stock: 60,
  price: 75.00,
  rating: 4.9
)



item2.picture.attach(
    io: File.open(Rails.root.join('app', 'assets', 'images', 'adult_gloves.jpeg')), 
    filename: 'adult_gloves.jpeg', 
    content_type: 'image/jpeg'
)
item1.picture.attach(
    io: File.open(Rails.root.join('app', 'assets', 'images', 'adult_gloves.jpeg')), 
    filename: 'adult_gloves.jpeg', 
    content_type: 'image/jpeg'
)

