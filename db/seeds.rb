# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
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
<<<<<<< ffd33c5a219f7956c89a367969c64643d31cd595



categories = Category.create(name: "Ao", description: "ao mat")
categories = Category.create(name: "quan", description: "quan mat")

small_categories = SmallCategory.create(small_category_name: "Ao lot", description: "de mat", category_id: 1)
small_categories = SmallCategory.create(small_category_name: "quan lot", description: "de mat", category_id: 2)

products = Product.create(name: "sony", description_sort: "a", description_long: "b", image: "links",
	color: "c", size: "3x4", price_in: 15, price_out: 20, price_sale: 3, status: 0, small_category_id: 1)
products = Product.create(name: "apple", description_sort: "g", description_long: "h", image: "links",
	color: "j", size: "3x4", price_in: 20, price_out: 25, price_sale: 0, status: 1, small_category_id: 2)
#products = Product.create(name: "sony", description_sort: "a", description_long: "b", image: "",
#	color: "c", size: "3x4", price_in: 15, price_out: 20, price_sale: 3, status: 0, small_category_id: 1)
#products = Product.create(name: "apple", description_sort: "g", description_long: "h", image: "",
#	color: "j", size: "3x4", price_in: 20, price_out: 25, price_sale: 0, status: 1, small_category_id: 2)
#image_products = ImageProduct.create(image: "", product_id: 1)

=======
>>>>>>> Admin User
# small_categories = SmallCategory.create(small_category_name: "Blouses Shirts",
#   description: "Blouses Shirts")

users = User.create(name: "Ngo Minh Hau", phone: "0123456789", email: "haumin1201@gmail.com", 
	address: "Da Nang", password: "123123", role: 1)

users = User.create(name: "Pham Den", phone: "0123456789", email: "denpham1201@gmail.com", 
	address: "Da Nang", password: "123123", role: 0)
