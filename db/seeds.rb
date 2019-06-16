# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
<<<<<<< 832ee81442cec107696360879d18b0d51c504cd3
# categories = Category.create(name: "categories1",description: "sjdgfsjd")
# users = User.create(name: "Duc Vinh",
#   username: "DucVinh2609",
#   password: "123123",
#   phone: "0787073046",
#   email: "ducvinhnguyen2609@gmail.com",
#   address: "Da Nang",
#   gender: 0)
#   users = User.create(name: "Duc Vinh 123",
#   email: "ducvinhnguyen2609@gmail.com",
#   password: "123123")

# contacts = Contact.create(users_id: 1,message: "sydgasda")

# categories = Category.create(name: "TOPS",description: "tops")
# categories = Category.create(name: "BOTTOMS",description: "bottoms")
# categories = Category.create(name: "ACCESSORIES",description: "accessories")



categories = Category.create(name: "Ao", description: "ao mat")
categories = Category.create(name: "quan", description: "quan mat")

small_categories = SmallCategory.create(small_category_name: "Ao lot", description: "de mat", category_id: 1)
small_categories = SmallCategory.create(small_category_name: "quan lot", description: "de mat", category_id: 2)

products = Product.create(name: "sony", description_sort: "a", description_long: "b", image: "links",
	color: "c", size: "3x4", price_in: 15, price_out: 20, price_sale: 3, status: 0, small_category_id: 1)
products = Product.create(name: "apple", description_sort: "g", description_long: "h", image: "links",
	color: "j", size: "3x4", price_in: 20, price_out: 25, price_sale: 0, status: 1, small_category_id: 2)
