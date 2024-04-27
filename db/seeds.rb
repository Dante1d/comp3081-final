# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end
Recipe.create!(name: "Spaghetti Aglio e Olio", description: "A simple yet flavorful Italian pasta dish made with garlic, olive oil, and red pepper flakes.", cook_time: 20)
Recipe.create!(name: "Chicken Alfredo", description: "A creamy pasta dish featuring tender chicken breast, fettuccine, and a rich Alfredo sauce.", cook_time: 30)
Recipe.create!(name: "Homemade Margherita Pizza", description: "A classic pizza topped with fresh tomatoes, mozzarella cheese, basil leaves, and a drizzle of olive oil.", cook_time: 15)
Recipe.create!(name: "Beef Stir-Fry", description: "A quick and easy dish made with thinly sliced beef, vegetables, and a savory stir-fry sauce.", cook_time: 20)
Recipe.create!(name: "Chocolate Chip Cookies", description: "Delicious homemade cookies loaded with chocolate chips, perfect for a sweet treat.", cook_time: 10)


# Spaghetti Aglio e Olio
Ingredient.create!(name: "Spaghetti", quantity: "200g", price: 1.50, recipe_id: Recipe.find_by(name: "Spaghetti Aglio e Olio").id)
Ingredient.create!(name: "Garlic", quantity: "4 cloves", price: 0.50, recipe_id: Recipe.find_by(name: "Spaghetti Aglio e Olio").id)
Ingredient.create!(name: "Olive Oil", quantity: "4 tbsp", price: 1.00, recipe_id: Recipe.find_by(name: "Spaghetti Aglio e Olio").id)
Ingredient.create!(name: "Red Pepper Flakes", quantity: "1/2 tsp", price: 0.25, recipe_id: Recipe.find_by(name: "Spaghetti Aglio e Olio").id)

# Chicken Alfredo
Ingredient.create!(name: "Fettuccine", quantity: "200g", price: 1.50, recipe_id: Recipe.find_by(name: "Chicken Alfredo").id)
Ingredient.create!(name: "Chicken Breast", quantity: "2 breasts", price: 3.00, recipe_id: Recipe.find_by(name: "Chicken Alfredo").id)
Ingredient.create!(name: "Heavy Cream", quantity: "1 cup", price: 1.50, recipe_id: Recipe.find_by(name: "Chicken Alfredo").id)
Ingredient.create!(name: "Parmesan Cheese", quantity: "1/2 cup", price: 1.00, recipe_id: Recipe.find_by(name: "Chicken Alfredo").id)
Ingredient.create!(name: "Butter", quantity: "2 tbsp", price: 0.50, recipe_id: Recipe.find_by(name: "Chicken Alfredo").id)

# Homemade Margherita Pizza
Ingredient.create!(name: "Pizza Dough", quantity: "1 ball", price: 2.00, recipe_id: Recipe.find_by(name: "Homemade Margherita Pizza").id)
Ingredient.create!(name: "Fresh Tomatoes", quantity: "2 medium", price: 1.00, recipe_id: Recipe.find_by(name: "Homemade Margherita Pizza").id)
Ingredient.create!(name: "Mozzarella Cheese", quantity: "200g", price: 2.50, recipe_id: Recipe.find_by(name: "Homemade Margherita Pizza").id)
Ingredient.create!(name: "Fresh Basil Leaves", quantity: "1/4 cup", price: 1.00, recipe_id: Recipe.find_by(name: "Homemade Margherita Pizza").id)
Ingredient.create!(name: "Olive Oil", quantity: "2 tbsp", price: 0.50, recipe_id: Recipe.find_by(name: "Homemade Margherita Pizza").id)

# Beef Stir-Fry
Ingredient.create!(name: "Beef Sirloin", quantity: "300g", price: 5.00, recipe_id: Recipe.find_by(name: "Beef Stir-Fry").id)
Ingredient.create!(name: "Bell Peppers", quantity: "2 peppers", price: 1.50, recipe_id: Recipe.find_by(name: "Beef Stir-Fry").id)
Ingredient.create!(name: "Broccoli", quantity: "1 head", price: 1.00, recipe_id: Recipe.find_by(name: "Beef Stir-Fry").id)
Ingredient.create!(name: "Soy Sauce", quantity: "3 tbsp", price: 0.50, recipe_id: Recipe.find_by(name: "Beef Stir-Fry").id)
Ingredient.create!(name: "Ginger", quantity: "1-inch piece", price: 0.50, recipe_id: Recipe.find_by(name: "Beef Stir-Fry").id)

# Chocolate Chip Cookies
Ingredient.create!(name: "All-Purpose Flour", quantity: "1 cup", price: 0.50, recipe_id: Recipe.find_by(name: "Chocolate Chip Cookies").id)
Ingredient.create!(name: "Baking Soda", quantity: "1/2 tsp", price: 0.25, recipe_id: Recipe.find_by(name: "Chocolate Chip Cookies").id)
Ingredient.create!(name: "Salt", quantity: "1/4 tsp", price: 0.10, recipe_id: Recipe.find_by(name: "Chocolate Chip Cookies").id)
Ingredient.create!(name: "Unsalted Butter", quantity: "1/2 cup", price: 1.00, recipe_id: Recipe.find_by(name: "Chocolate Chip Cookies").id)
Ingredient.create!(name: "Brown Sugar", quantity: "1/2 cup", price: 0.50, recipe_id: Recipe.find_by(name: "Chocolate Chip Cookies").id)
Ingredient.create!(name: "White Sugar", quantity: "1/4 cup", price: 0.25, recipe_id: Recipe.find_by(name: "Chocolate Chip Cookies").id)
Ingredient.create!(name: "Vanilla Extract", quantity: "1 tsp", price: 0.50, recipe_id: Recipe.find_by(name: "Chocolate Chip Cookies").id)
Ingredient.create!(name: "Chocolate Chips", quantity: "1 cup", price: 2.00, recipe_id: Recipe.find_by(name: "Chocolate Chip Cookies").id)
