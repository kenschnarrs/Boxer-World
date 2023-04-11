# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

# Create a main sample user
User.create!(
    email: "bob@email.com",
    password: "something",
)

# Create sample items
Item.create!(
    name: "Adult Gloves",
    brand: "Nike",
    category: "Boxing Gloves",
    size: "Medium"
)

Item.create!(
    name: "Teen Gloves",
    brand: "Nike",
    category: "Boxing Gloves",
    size: "Large"
)

Item.create!(
    name: "Kids Gloves",
    brand: "Nike",
    category: "Boxing Gloves",
    size: "Small"
)