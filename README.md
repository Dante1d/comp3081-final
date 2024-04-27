# comp3081-final
Comp-3081 Final Project - Web Application Development

## Recipe Book App

Project Overview:
This Recipe Book App is a web application built using Ruby on Rails. It allows users to view recipes and ingredients and view recipe details such as names of the recipes, how long it takes to cook, the names of the ingredients, the quantity of the ingredients needed, and the price of the ingredients.

Technical Description:

Recipe Model
The Recipe model represents a recipe in the Recipe Book application. 

Attributes:
- `name` (String, required): Represents the name of the recipe. It must be present and have a maximum length of 255 characters.
- `description` (Text, required): Represents the description or instructions for preparing the recipe. It must be present.
- `cook_time` (Integer, required): Represents the time required to cook the recipe, specified in minutes. It must be present, be a positive integer, and be validated using the numerical validator.

Validations:
- `name`:
  - Presence: Ensures that the name attribute is not blank.
  - Length: Limits the length of the name attribute to a maximum of 255 characters.
- `description`:
  - Presence: Ensures that the description attribute is not blank.
- `cook_time`:
  - Presence: Ensures that the cook_time attribute is not blank.
  - Numericality: Ensures that the cook_time attribute is a positive integer, using the `only_integer` option.

Associations:
- `has_many :ingredients, dependent: :destroy`: Indicates that a recipe can have multiple ingredients associated with it. The `dependent: :destroy` option ensures that if a recipe is deleted, all associated ingredients are also deleted.

Usage:
- This model allows the application to find recipes, including their names, descriptions, and cook times.
- The validations ensure that recipes are created with valid attributes, such as a non-blank name, description, and a positive integer cook time.

Ingredient Model
The Ingredient model represents an ingredient used in a recipe in the Recipe Manager application. It stores a list of ingredients and shows the recipes that correspond with them.

Attributes:
- `name` (String, required): Represents the name of the ingredient. It must be present and have a maximum length of 100 characters.
- `quantity` (String, required): Represents the quantity or amount of the ingredient needed for the recipe. It must be present and have a maximum length of 50 characters.
- `price` (Decimal, required): Represents the price of the ingredient, specified as a decimal number. It must be present and be greater than or equal to 0.
- `recipe_id` (Integer, required): Represents the foreign key linking the ingredient to a recipe. It must be present.

Validations:
- `name`:
  - Presence: Ensures that the name attribute is not blank.
  - Length: Limits the length of the name attribute to a maximum of 100 characters.
- `quantity`:
  - Presence: Ensures that the quantity attribute is not blank.
  - Length: Limits the length of the quantity attribute to a maximum of 50 characters.
- `price`:
  - Presence: Ensures that the price attribute is not blank.
  - Numericality: Ensures that the price attribute is a decimal number and is greater than or equal to 0.
- `recipe_id`:
  - Presence: Ensures that the recipe_id attribute is not blank.

Associations:
- `belongs_to :recipe`: Indicates that an ingredient belongs to a single recipe. This establishes a one-to-many relationship between recipes and ingredients, where a recipe can have multiple ingredients but an ingredient belongs to only one recipe.

Usage:
- This model allows the application to store and manage ingredients, including their names, quantities, prices, and the recipes they belong to.
- The validations ensure that ingredients are created with valid attributes, such as non-blank name, quantity, and price, as well as a valid recipe_id.

Searching Plan:
Implement client-side searching of recipes by name. When a user types in the search bar, the JavaScript function will filter out recipes whose names do not contain the search query.

Client-Side Feature Plan:
When the user types in the search input field (logic):
1. Get the value of the input field and convert it to lowercase (query).
2. Select all recipe elements on the page.
3. Iterate over each recipe element:
   - Get the name of the recipe (`recipeName`) from the data-name attribute.
   - Convert `recipeName` to lowercase.
   - If `recipeName` contains the query, display the recipe.
   - Otherwise, hide the recipe.

Challenges and Solutions:
- A challenge that I faced was trying to implement the client-side feature for my index page. I had trouble connecting my JavaScript to my index file so I had to look back through the notes and the internet to try and find a solution. Eventually, I found a very informative video on YouTube explaining how to implement the fix.
