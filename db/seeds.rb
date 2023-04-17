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

item3.picture.attach(
    io: File.open(Rails.root.join('app', 'assets', 'images', 'adult_gloves.jpeg')), 
    filename: 'adult_gloves.jpeg', 
    content_type: 'image/jpeg'
   
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

