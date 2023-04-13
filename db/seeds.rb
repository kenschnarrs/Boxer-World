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
    password: "something",
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

