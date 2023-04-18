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
    name: "Bob",
    username: "The Ice Sickle",
    email: "bob@email.com",
    phone:"901-555-5555",
    password:"something",
    address: "3632 MerriGo Lane",
    blurb: "Hi",
    card_num: 0,
    exp_month: 0,
    exp_year: 0,
    cvc: 0
)
#
#Calvin Gott   
#created a sample user class
#Upaded the User Model with name, username, phone,address,blurb.card_num,exp_month,exp_year
#
user1 = User.create!(
    name: "Mike Tyson",
    username: "Iron Mike",
    email: "MikeT@email.com",
    phone:"929-292-5555",
    password:"Password",
    address: "Champs Lane",
    blurb: "Goat",
    card_num: 0,
    exp_month: 0,
    exp_year: 0,
    cvc: 0

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
    rating: 0,
    description:"dfahds"
)


item2 = Item.create!(
    name: "Kid Gloves",
    brand: "Nike",
    category: "Boxing Gloves",
    size: "Small",
    isFeatured: true,
    num_in_stock: 50,
    price: 30.00,
    rating: 0,
    description:"Mauris non s tempus maximus. Interdum et malesuada fames ac psum primis in faucibus orci luctus et ultrices posuere cubilia curae; In fermentum risus eget mauris faucibus blandit. Pellentesque nec leo ut enim viverra consectetur vel quis mauris. Vestibulum ullamcorper, lacus auctor luctus condimentum, magna eros rutrum erat, quis sagittis mauris nisi id libero. Donec consectetur placerat lorem, eu aliquet turpis maximus a. Integer dignissim eros mi, quis feugiat lectus consequat quis. Nam laoreet, velit id euismod gravida, turpis arcu tempus leo, eu lobortis erat justo a eros. Mauris facilisis efficitur posuere. Cras semper felis ac odio auctor, sed lacinia ligula convallis. Nunc cursus lectus aliquam mauris scelerisque, sit amet porta leo laoreet. Aenean tincidunt aliquet velit, eget pretium nunc vehicula at. Donec vitae tortor arcu. Aliquam in massa ut elit condimentum interdum."
)

item3 = Item.create!(
    name: "Unisex Gloves",
    brand: "Adidas",
    category: "Boxing Gloves",
    size: "Small",
    isFeatured: true,
    num_in_stock: 50,
    price: 30.00,
    rating: 0,
    description:"fsas"
)


# Item 2 (using the original format)
item4 = Item.create!(
  name: "Little Kid Gloves",
  brand: "Nike",
  category: "Boxing Gloves",
  size: "Small",
  isFeatured: false,
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
  isFeatured: false,
  num_in_stock: 75,
  price: 40.00,
  rating: 3.8
)

# Item 4
item6 = Item.create!(
  name: "Super Gloves",
  brand: "Title Boxing",
  category: "Boxing Gloves",
  size: "Large",
  isFeatured: false,
  num_in_stock: 60,
  price: 75.00,
  rating: 4.9
)


item1.picture.attach(
    io: File.open(Rails.root.join('app', 'assets', 'images', 'adult_gloves.jpeg')), 
    filename: 'adult_gloves.jpeg', 
    content_type: 'image/jpeg'
)
item2.picture.attach(
    io: File.open(Rails.root.join('app', 'assets', 'images', 'adult_gloves.jpeg')), 
    filename: 'adult_gloves.jpeg', 
    content_type: 'image/jpeg'
)
item3.picture.attach(
    io: File.open(Rails.root.join('app', 'assets', 'images', 'adult_gloves.jpeg')), 
    filename: 'adult_gloves.jpeg', 
    content_type: 'image/jpeg'
)
item4.picture.attach(
    io: File.open(Rails.root.join('app', 'assets', 'images', 'adult_gloves.jpeg')), 
    filename: 'adult_gloves.jpeg', 
    content_type: 'image/jpeg'
)
item5.picture.attach(
    io: File.open(Rails.root.join('app', 'assets', 'images', 'adult_gloves.jpeg')), 
    filename: 'adult_gloves.jpeg', 
    content_type: 'image/jpeg'
)
item6.picture.attach(
    io: File.open(Rails.root.join('app', 'assets', 'images', 'adult_gloves.jpeg')), 
    filename: 'adult_gloves.jpeg', 
    content_type: 'image/jpeg'
)


