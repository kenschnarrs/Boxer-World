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
user0 = User.create!(
    first_name: "Mike",
    last_name: "Tyson",
    username: "The Ice Sickle",
    email: "mike@email.com",
    phone:"901-555-5555",
    password:"something",
    street_address: "Champs Lane",
    city: "Champs City",
    zip_code: 12345,
    state: "Champs State",
    country: "Champs Country",
    blurb: "Hi, I\'m Joe.",
    card_num: 4929530607600026,
    exp_month: 12,
    exp_year: 2024,
    cvc: 303
)
#
#Calvin Gott   
#created a sample user class
#Upaded the User Model with name, username, phone,address,blurb.card_num,exp_month,exp_year
#
user1 = User.create!(
    first_name: "Mike",
    last_name: "Tyson",
    username: "Iron Mike",
    email: "MikeTysonGOAT@email.com",
    phone:"929-292-5555",
    password:"Password",
    street_address: "Champs Lane",
    city: "Champs City",
    zip_code: 12345,
    state: "Champs State",
    country: "Champs Country",
    blurb: "Goat",
    card_num: 4929530607600026,
    exp_month: 1,
    exp_year: 2029,
    cvc: 111

)

# Create sample items
item1 = Item.create!(
    name: "Adult Gloves",
    brand: "Title",
    category: "Boxing Gloves",
    size: "Medium",
    isFeatured: true,
    num_in_stock: 50,
    price: 50.00,
    rating: 0,
    description:"A TITLE Classic Top Seller for almost 20 years is now even more exciting and advanced with improvements and added features. These incredibly high quality training gloves are constructed with 100% genuine top-grain leather for super durable, long lasting, ultra-resilient training gloves. Professionally packed with more than 2” of preformed, thick, shock absorbing, protective molded foam that is ready to go – no break-in period time needed. Full wraparound elastic and leather wrist strap with hook-and-loop attachment assure a firm, custom fit for every athlete. A Classic Choice at an Incredible Price!"
    
)


item2 = Item.create!(
    name: "Kid Gloves",
    brand: "Boom Boom",
    category: "Boxing Gloves",
    size: "Small",
    isFeatured: true,
    num_in_stock: 0,
    price: 30.00,
    rating: 0,
    description: "BOOM BOOM Boxing Youth Gear is engineered and crafted exclusively for youths and young training demands.  Injected molded foam technology provides high density sponge foam that delivers a lighter, anatomically correct, internal core for maximum comfort and fist protection. Pre-curved design allows young hands to sit in a natural position causing less hand fatigue and extended workouts. 360-degree extra-wide wraparound wrist strap with hook-and-loop closure assures a secure, no-slip, custom fit for every child.  Easy on and off.  Satin nylon hand liner is extremely comfortable and repels moisture absorption inside the gloves. Ideal for all heavy bag training, bag work, punch mitts and more."
)

item3 = Item.create!(
    name: "Duran Gloves",
    brand: "Title",
    category: "Boxing Gloves",
    size: "Small",
    isFeatured: true,
    num_in_stock: 50,
    price: 230.00,
    rating: 8,
    description: "With the TITLE Boxing Roberto Duran Leather Training Gloves, you can harness the punching power and toughness of one of the most exciting, ferocious fighters of all time, the Manos de Piedra – the Hands of Stone. These gloves were designed with the legendary Duran in mind featuring an old school pattern and constructed of genuine leather. With a classic wrap around closure, these gloves are easy to slip on to provide a secure fit every time. Each glove has Duran’s distinctive embroidered signature and an embossed TITLE logo. "
)



item4 = Item.create!(
  name: "Vintage Gloves",
  brand: "Title",
  category: "Boxing Gloves",
  size: "Small",
  isFeatured: false,
  num_in_stock: 50,
  price: 149.00,
  rating: 0,
  description:"Join in celebrating TITLE’s 25 Year Anniversary in boxing with a throwback look and feel. A foam padding with a tough outer layer to protect your hands from repeated punches on a heavy bag. This glove has a genuine leather outer layer with a D-ring strapping system and is a bit less bulky than other gloves in its category.  "
)

# Item 5
item5 = Item.create!(
  name: "Sugar Ray Gloves",
  brand: "Title",
  category: "Boxing Gloves",
  size: "Medium",
  isFeatured: false,
  num_in_stock: 75,
  price: 231.00,
  rating: 3.8,
  description:"Fast hands, accurate punching and precision happens on purpose and “by design”. The 1.25” thick layer of open cell padding provides protection but allows you to feel how each punch lands. When Ray’s signature of approval is on it, you don’t need anything else. "
)

# Item 6
item6 = Item.create!(
  name: "Golden Foam Gloves",
  brand: "Title",
  category: "Boxing Gloves",
  size: "Large",
  isFeatured: false,
  num_in_stock: 60,
  price: 75.00,
  rating: 4.9,
  description:"All new and innovative high-quality, super-stylish and flashy training gloves crafted with exclusive Infused Foam® over the fist and knuckles to form a lighter, more impact-resistant core. Delivers all the comfort, protection and execution athletes demand in their training, sparring and boxing workouts. TITLE Infused Foam® technology is the rage sweeping the world in boxing glove manufacturing and performance."
)

item7 = Item.create!(
    name: "Pro Style Gloves",
    brand: "Title",
    category: "Boxing Gloves",
    size: "Large",
    isFeatured: false,
    num_in_stock: 60,
    price: 165.00,
    rating: 9.9,
    description: "An exciting re-creation of our famous signature Leather Pro-Style Training Gloves with even more added features and benefits! Genuine full-grain leather cover is super tough and durable, for round after round of top-level performance. Multi-layer shock absorbing high and low density foams over the fist and back of hand offer all the power and coverage you demand in a high quality training glove. Full wrap around two-ply wrist strap with hook-and-loop closure for maximum fit, security and performance. A satin nylon hand compartment liner helps repel moisture retention and keep gloves fresher between uses. A TITLE Top Seller is Now Even Better . . . At an Incredible Price!"
)

item8 = Item.create!(
    name: "Viper Training Gloves",
    brand: "Title",
    category: "Boxing Gloves",
    size: "Large",
    isFeatured: false,
    num_in_stock: 32,
    price: 75.00,
    rating: 4.9,
    description:"A venomous compilation of tough snakeskin configuration, engineered suede leather and belly skin for an astonishing training glove that is built for battle with serpent strike swiftness and striking precision. Multi-layered inner foam padding is powered with a less dense shock absorbing bottom layer and a medium density impact resistant outer layer for maximum results and superior coverage training and sparring. Sleek, angled wraparound wrist strap assures a secure, custom fit for every athlete. Cuff is layered and divided to increase wrist support and add punching leverage, vital during training."
)

item9 = Item.create!(
    name: "Gel Training Gloves",
    brand: "Title",
    category: "Boxing Gloves",
    size: "Small",
    isFeatured: false,
    num_in_stock: 100,
    price: 111.00,
    rating: 4.9,
    description: "Constructed with a multi-layer, open cell foam and a layer of GEL for the optimal hand protection. Built with 100% genuine leather for durability and lasting comfort and includes perforated palm for greater breathability and faster drying time."
)

item10 = Item.create!(
    name: "Supreme  Gloves",
    brand: "Title",
    category: "Boxing Gloves",
    size: "Medium",
    isFeatured: false,
    num_in_stock: 10,
    price: 100.00,
    rating: 4.9,
    description:"Manufactured and crafted with bold and daring, exclusive Oxblood Red Leather that is a throwback to what the greatest fighters of the past glory days wore. Extra-wide wrap-around wrist closure with reverse D-Ring for secure, custom fit for all athletes.  A combination of Infused and EVA layered foams creates the most comfortable, conforming and protective foams for the heavy hitters. "
)

item11 = Item.create!(
    name: "Pro Fight Gloves",
    brand: "Title",
    category: "Boxing Gloves",
    size: "Medium",
    isFeatured: false,
    num_in_stock: 20,
    price: 180.00,
    rating: 1.9,
    description:"For any fighter who has coveted that distinctive green belt, here are the gloves that will help you keep your goal in mind and your eyes on the prize. Built with an all-leather construction, multi-layered foam padding and quilted horsehair. Contains a unique padding structure that helps prevent separation and exposure of knuckles.  Features all appropriate labels to meet commission requirements, including weight, round usage label and country of origin. Approved by the WBC (World Boxing Council.)"
)

item12 = Item.create!(
    name: "Black Gloves",
    brand: "Adidas",
    category: "Boxing Gloves",
    size: "Medium",
    isFeatured: false,
    num_in_stock: 90,
    price: 180.00,
    rating: 1.9,
    description: "The innovative Tilt Design keeps Knuckles in natural alignment, allowing progressive engagement of the knuckles. The Force of the punch is distributed through Carpels and Meta-Carpels according to their Bone density. The Tilt Design allows fist to retain a neutral position without forcing it into a Radial Deviation. A single mold design protects against Wrist Extension or Flexion injuries. "
)

item13 = Item.create!(
    name: "Inferno Intensity Gloves",
    brand: "Title",
    category: "Boxing Gloves",
    size: "Medium",
    isFeatured: false,
    num_in_stock: 99,
    price: 180.00,
    rating: 9.9,
    description:"Fan the flames.  Ignite the Inferno.  Incredible and intense engineered leather craftsmanship assures elite quality, super stylish and flashy training gloves.  Manufactured with a full 2” of multi-layered foams over the fist and knuckles to form an impact resistant, form fitting core.  Innovative design with anatomically contoured inner fist for a more natural and comfortable fist position, reducing hand fatigue.  "
)

item14 = Item.create!(
    name: "Lava Gel Gloves",
    brand: "Title",
    category: "Boxing Gloves",
    size: "Small",
    isFeatured: false,
    num_in_stock: 33,
    price: 225.00,
    rating: 9.9,
    description: "Destroy everything in your path like a powerful force of naturein the TITLE Boxing GEL Lava Leather Series Sparring Gloves. These unique Lava Leather Series sparring gloves feature a layer of TITLE GEL ‘dripping’ down the fist to protect key impact areas and reduce the chance of injury. These are constructed from 100% genuine leather and feature an inset label to prevent the chance of cuts or abrasions during sparring."
)

item15 = Item.create!(
    name: "White Gloves",
    brand: "Title",
    category: "Boxing Gloves",
    size: " Extra Small",
    isFeatured: false,
    num_in_stock: 41,
    price: 153.00,
    rating: 8.9,
    description:"The TITLE WHITE equipment line is an elaborate equipment series that takes you to the edge with precision king cut double-ply full grain leathers, brilliant and luxurious patent leathers and extra deep pile suede leathers that complement each other in a rich compilation of premier quality, clout and exclusive membership. A heavy-duty nylon mesh upper palm inset allows air release during intense workouts."
)

item16 = Item.create!(
    name: "Greatest Heavy Bag",
    brand: "Title",
    category: "Punching Bags",
    size: " Extra Small",
    isFeatured: false,
    num_in_stock: 41,
    price: 153.00,
    rating: 8.9,
    description: "TITLE unveils the Greatest Heavy Bag Ever with this elaborate, stylish, full-body heavy bag crafted for every punch, strike, combination, kick and more with incredible resistance and crafted for less swinging and movement. Packed with shredded fabric that keeps the bag from sagging or settling. A center aligned weight is precision placed for maximum force dispersion and balance while providing ideal impact and life-like striking surface feel, without sacrificing quality. A tough Terpoline synthetic leather cover is tough and durable for maximum results."
)


item17 = Item.create!(
    name: "Double End Bag",
    brand: "Title",
    category: "Punching Bags",
    size: "Small",
    isFeatured: false,
    num_in_stock: 81,
    price: 79.00,
    rating: 8.9,
    description: "Top-grade, all-leather shell with triple nylon stitched, leather welted seams for professional results. Ideal for throwing all punches, slipping, counter punching and reflex training! Extra-long 3.5” twin-ply leather attachment straps, with heavy-duty chrome O-rings on top and bottom have hook-and-loop security in the center - with an inset zipper closure on top - to easily and conveniently get to inside butyl rubber bladder, if needed."
)

item18 = Item.create!(
    name: "Premier Punching Bag",
    brand: "Title",
    category: "Punching Bags",
    size: "Small",
    isFeatured: false,
    num_in_stock: 20,
    price: 164.00,
    rating: 8.9,
    description: "Engineered with luxurious 1.75 mm calf split buff imported premium leather for the ultimate heavy bag training experience. Premium leather cover is incredibly strong and resilient, yet with a more plush, comfortable feel. Specially blended poly-fiber filler is professionally packed to extend resilient shock absorbency. Center aligned weight is precision placed for maximum force dispersion and balance."
)

item19 = Item.create!(
    name: "Classic Speed Bag",
    brand: "Title",
    category: "Punching Bags",
    size: "Small",
    isFeatured: false,
    num_in_stock: 4,
    price: 67.00,
    rating: 8.9,
    description: "Tough, super fast and lightweight leather build. All-leather welted seams, triple stitched and precision balanced for true rebounds. Loop is extra-reinforced for long wear. Complete with extended-life rubber bladder. "
)

item20 = Item.create!(
    name: "Next Gen Speed Bag",
    brand: "Title",
    category: "Punching Bags",
    size: "Small",
    isFeatured: false,
    num_in_stock: 134,
    price: 82.00,
    rating: 5.9,
    description:"Super-fast, precision balanced speed bag is crafted from quality leather, with triple stitched seams, and double welded loop for professional action and results. Complete with a butyl rubber bladder for long life and rapid rebounds."
)

item21 = Item.create!(
    name: "Adjustable Speed Bag",
    brand: "Title",
    category: "Punching Bags",
    size: "Medium",
    isFeatured: false,
    num_in_stock: 104,
    price: 280.00,
    rating: 5.9,
    description: "Extra heavy-duty steel frame is built for industrial gym use and professional workouts. High density 24 inch diameter walnut laminated wood platform is built for solid, lightning quick and true rebounds. Includes solid steel chrome guide shafts and precision 14 inch worm drive height adjustment, which makes it perfect for all athletes from kids to adults."
)


item22 = Item.create!(
    name: "Ali Punching Bag",
    brand: "Title",
    category: "Punching Bags",
    size: "Medium",
    isFeatured: false,
    num_in_stock: 57,
    price: 380.00,
    rating: 5.9,
    description:"Authentic, vintage recreation of the 100% genuine heavy bag that used to hang in Muhammad Ali’s world famous Deer Lake Training Camp in Pennsylvania. Luxurious old school silver/gold and rich oxblood red color combination was a staple of the Ali’s training and generation. Professionally stuffed and packed with shredded poly fiber material with a center placed weight for balance and professional training results. "
)

item23 = Item.create!(
    name: "Cus Amato Bag",
    brand: "Title",
    category: "Punching Bags",
    size: "Medium",
    isFeatured: false,
    num_in_stock: 77,
    price: 297.00,
    rating: 9.9,
    description: "Develop the impetuous training style of legends with the CUS D’Amato Willie Heavy Bag. Patterned from the revolutionary wall mounted bag created by world renowned trainer, Cus D’Amato, with the printed numbering system used to call out specific punch combinations. "
)


item24 = Item.create!(
    name: "Platinum Speed Bag",
    brand: "Title",
    category: "Punching Bags",
    size: "Medium",
    isFeatured: false,
    num_in_stock: 11,
    price: 63.00,
    rating: 8.9,
    description: "A Momentous Speed bag constructed of genuine leather and silver synthetic panels that are great for visibility. This bag has a precise shape and a lightweight design that creates a fast, perfect rebound after every strike."
)

item25 = Item.create!(
    name: "White Speed Bag",
    brand: "Title",
    category: "Punching Bags",
    size: "Medium",
    isFeatured: false,
    num_in_stock: 27,
    price: 55.00,
    rating: 8.9,
    description: "Nothing beats the clean, crisp look of the TITLE White line. Constructed with a thick combination of matte, suede and luxurious patent leather accents. Features an easy-access air valve to re-inflating. Double-stitched, welted seams, plus an additional layer of leather around the striking area, increases durability."
)

item26 = Item.create!(
    name: "Black  Trunks",
    brand: "Title",
    category: "Apparel",
    size: "Small",
    isFeatured: false,
    num_in_stock: 17,
    price: 30.00,
    rating: 3.9,
    description:"The TITLE Edge Boxing Trunks 2.0 are perfect for stepping into the ring with the winning edge. These boxing trunks are constructed from 100% polyester and are fully machine washable."
)

item27 = Item.create!(
    name: "USA Badge Tee",
    brand: "Title",
    category: "Apparel",
    size: "Large",
    isFeatured: false,
    num_in_stock: 2,
    price: 31.00,
    rating: 5.9,
    description: "1x1 baby rib-knit set-in collar. Tear-away label"
)

item28 = Item.create!(
    name: "Black Sauna Suit",
    brand: "Title",
    category: "Apparel",
    size: "Large",
    isFeatured: false,
    num_in_stock: 300,
    price: 99.00,
    rating: 5.9,
    description: "Incredible tri-layered rip-stop rubberized nylon set offers athletes an extremely comfortable and stylish super intense sauna action suit. Complete set includes both hooded pullover top and pro pants. The hood conveniently stows away inside the collar for easy access when needed. The pants have an extra-wide elastic waistband with inside drawstring waist for maximum security."
)

item29 = Item.create!(
    name: "Vintage Corner Jacket",
    brand: "Title",
    category: "Apparel",
    size: "Extra Large",
    isFeatured: false,
    num_in_stock: 30,
    price: 35.00,
    rating: 7.9,
    description: "Throw it back to the days when corner men were dressed cool and classy. 100% poly/satin material for optimal comfort and performance. Contrasting colors and trim provide better matching colors to fighter’s outfits and provide standout style. "
)

item30 = Item.create!(
    name: "Duran Hand Wraps",
    brand: "Title",
    category: "Apparel",
    size: "Large",
    isFeatured: false,
    num_in_stock: 500,
    price: 9.00,
    rating: 9.9,
    description: "With the TITLE Roberto Duran Hand Wraps, you can throw blows with the ferocity of the Panamanian legend who captured the hearts of an entire country and the imaginations of boxing fans worldwide. The hand wraps are made from elastic spandex/polyester blend that provides a form-fitting wrap with just the right amount of security that allows you to punch with confidence. "
)

item31 = Item.create!(
    name: "Quality Goods Tee",
    brand: "Title",
    category: "Apparel",
    size: "Medium",
    isFeatured: false,
    num_in_stock: 2,
    price: 25.00,
    rating: 6.9,
    description: "A classic TITLE look made with a soft, polyester blend that dries quickly. The tee is slightly stretchy for a comfortable fit. "
)

item32 = Item.create!(
    name: "Kronk Detroit Tee",
    brand: "Title",
    category: "Apparel",
    size: "Large",
    isFeatured: false,
    num_in_stock: 2,
    price: 31.00,
    rating: 5.9,
    description: "Smooth Yellow Shirt"
)

item33 = Item.create!(
    name: "Boxing Boxer Briefs",
    brand: "Title",
    category: "Apparel",
    size: "Large",
    isFeatured: false,
    num_in_stock: 12,
    price: 15.00,
    rating: 8.9,
    description: "Put your big boy pants on and get ready to battle. The TITLE Boxing Boxer Briefs are constructed out of a thick yet stretchable material that makes them perfect to wear every day, for weigh-ins, in the gym, as compression shorts and even as Vale Tudo shorts! "
)

item34 = Item.create!(
    name: "Light Full Zip",
    brand: "Title",
    category: "Apparel",
    size: "Large",
    isFeatured: false,
    num_in_stock: 32,
    price: 21.00,
    rating: 9.4,
    description: "100% lightweight Polyester with French Fleece lining. Full zip front."
)

item35 = Item.create!(
    name: "Boxing Thermal Pants",
    brand: "Title",
    category: "Apparel",
    size: "Large",
    isFeatured: false,
    num_in_stock: 2,
    price: 30.00,
    rating: 5.8,
    description: "In the beginning there was Thermal Wear! TITLE Boxing Thermal Wear Pants provide warmth and allows you to break a sweat just like fighters of the past. Made from a breathable cotton/poly blend, this pant is stretchy and absorbent. The elastic waistband provides a secure fit for any type of training. "
)





#Item 

item1.picture.attach(
    io: File.open(Rails.root.join('app', 'assets', 'images', 'adult_gloves.jpeg')), 
    filename: 'thrwback.jpeg', 
    content_type: 'image/jpeg'
)
item2.picture.attach(
    io: File.open(Rails.root.join('app', 'assets', 'images', 'kids3.jpeg')), 
    filename: 'kids3.jpeg', 
    content_type: 'image/jpeg'
)
item3.picture.attach(
    io: File.open(Rails.root.join('app', 'assets', 'images', 'roberto.jpeg')), 
    filename: 'roberto.jpeg', 
    content_type: 'image/jpeg'
)
item4.picture.attach(
    io: File.open(Rails.root.join('app', 'assets', 'images', 'vintage.jpeg')), 
    filename: 'vintage.jpeg', 
    content_type: 'image/jpeg'
)
item5.picture.attach(
    io: File.open(Rails.root.join('app', 'assets', 'images', 'sugar.jpeg')), 
    filename: 'sugar.jpeg', 
    content_type: 'image/jpeg'
)
item6.picture.attach(
    io: File.open(Rails.root.join('app', 'assets', 'images', 'gold.jpeg')), 
    filename: 'gold.jpeg', 
    content_type: 'image/jpeg'
)

item7.picture.attach(
    io: File.open(Rails.root.join('app', 'assets', 'images', 'prostyle.jpeg')), 
    filename: 'prostyle.jpeg', 
    content_type: 'image/jpeg'
)

item8.picture.attach(
    io: File.open(Rails.root.join('app', 'assets', 'images', 'viper.jpeg')), 
    filename: 'viper.jpeg', 
    content_type: 'image/jpeg'
)

item9.picture.attach(
    io: File.open(Rails.root.join('app', 'assets', 'images', 'kids_two.jpeg')), 
    filename: 'kids_two.jpeg', 
    content_type: 'image/jpeg'
)

item10.picture.attach(
    io: File.open(Rails.root.join('app', 'assets', 'images', 'supreme.jpeg')), 
    filename: 'supreme.jpeg', 
    content_type: 'image/jpeg'
)

item11.picture.attach(
    io: File.open(Rails.root.join('app', 'assets', 'images', 'profight.jpeg')), 
    filename: 'profight.jpeg', 
    content_type: 'image/jpeg'
)
item12.picture.attach(
    io: File.open(Rails.root.join('app', 'assets', 'images', 'aa.jpeg')), 
    filename: 'aa.jpeg', 
    content_type: 'image/jpeg'
)

item13.picture.attach(
    io: File.open(Rails.root.join('app', 'assets', 'images', 'inferno.jpeg')), 
    filename: 'inferno.jpeg', 
    content_type: 'image/jpeg'
)

item14.picture.attach(
    io: File.open(Rails.root.join('app', 'assets', 'images', 'lava.jpeg')), 
    filename: 'lava.jpeg', 
    content_type: 'image/jpeg'
)

item15.picture.attach(
    io: File.open(Rails.root.join('app', 'assets', 'images', 'ice.jpeg')), 
    filename: 'ice.jpeg', 
    content_type: 'image/jpeg'
)

item16.picture.attach(
    io: File.open(Rails.root.join('app', 'assets', 'images', 'p1.jpeg')), 
    filename: 'p1.jpeg', 
    content_type: 'image/jpeg'
)

item17.picture.attach(
    io: File.open(Rails.root.join('app', 'assets', 'images', 'double.jpeg')), 
    filename: 'double.jpeg', 
    content_type: 'image/jpeg'
)

item18.picture.attach(
    io: File.open(Rails.root.join('app', 'assets', 'images', 'premier.jpeg')), 
    filename: 'premier.jpeg', 
    content_type: 'image/jpeg'
)

item19.picture.attach(
    io: File.open(Rails.root.join('app', 'assets', 'images', 'classic.jpeg')), 
    filename: 'classic.jpeg', 
    content_type: 'image/jpeg'
)

item20.picture.attach(
    io: File.open(Rails.root.join('app', 'assets', 'images', 'gen.jpeg')), 
    filename: 'gen.jpeg', 
    content_type: 'image/jpeg'
)

item21.picture.attach(
    io: File.open(Rails.root.join('app', 'assets', 'images', 'premier.jpeg')), 
    filename: 'premier.jpeg', 
    content_type: 'image/jpeg'
)

item22.picture.attach(
    io: File.open(Rails.root.join('app', 'assets', 'images', 'ali.jpeg')), 
    filename: 'ali.jpeg', 
    content_type: 'image/jpeg'
)

item23.picture.attach(
    io: File.open(Rails.root.join('app', 'assets', 'images', 'amato.jpeg')), 
    filename: 'amato.jpeg', 
    content_type: 'image/jpeg'
)

item24.picture.attach(
    io: File.open(Rails.root.join('app', 'assets', 'images', 'plat.jpeg')), 
    filename: 'plat.jpeg', 
    content_type: 'image/jpeg'
)

item25.picture.attach(
    io: File.open(Rails.root.join('app', 'assets', 'images', 'wspeed.jpeg')), 
    filename: 'wspeed.jpeg', 
    content_type: 'image/jpeg'
)

item26.picture.attach(
    io: File.open(Rails.root.join('app', 'assets', 'images', 'trunks.jpeg')), 
    filename: 'trunks.jpeg', 
    content_type: 'image/jpeg'
)

item27.picture.attach(
    io: File.open(Rails.root.join('app', 'assets', 'images', 'usa.jpeg')), 
    filename: 'usa.jpeg', 
    content_type: 'image/jpeg'
)

item28.picture.attach(
    io: File.open(Rails.root.join('app', 'assets', 'images', 'sauna.jpeg')), 
    filename: 'sauna.jpeg', 
    content_type: 'image/jpeg'
)

item29.picture.attach(
    io: File.open(Rails.root.join('app', 'assets', 'images', 'corner.jpeg')), 
    filename: 'corner.jpeg', 
    content_type: 'image/jpeg'
)


item30.picture.attach(
    io: File.open(Rails.root.join('app', 'assets', 'images', 'wraps.jpeg')), 
    filename: 'wraps.jpeg', 
    content_type: 'image/jpeg'
)

item31.picture.attach(
    io: File.open(Rails.root.join('app', 'assets', 'images', 'tee.jpeg')), 
    filename: 'tee.jpeg', 
    content_type: 'image/jpeg'
)

item32.picture.attach(
    io: File.open(Rails.root.join('app', 'assets', 'images', 'detroit.jpeg')), 
    filename: 'detroit.jpeg', 
    content_type: 'image/jpeg'
)

item33.picture.attach(
    io: File.open(Rails.root.join('app', 'assets', 'images', 'briefs.jpeg')), 
    filename: 'briefs.jpeg', 
    content_type: 'image/jpeg'
)

item34.picture.attach(
    io: File.open(Rails.root.join('app', 'assets', 'images', 'zip.jpeg')), 
    filename: 'zip.jpeg', 
    content_type: 'image/jpeg'
)

item35.picture.attach(
    io: File.open(Rails.root.join('app', 'assets', 'images', 'thermal.jpeg')), 
    filename: 'thermal.jpeg', 
    content_type: 'image/jpeg'
)