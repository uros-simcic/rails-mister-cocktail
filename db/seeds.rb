puts "Clean the DB"
if Rails.env == "development"
  Cocktail.destroy_all
  Ingredient.destroy_all
  Dose.destroy_all
end

puts "Create some cocktails"
bloody = Cocktail.create! name: "BloodyM"
screwdriver = Cocktail.create! name: "Screwdriver"

puts "Create some ingreditents"
lemon = Ingredient.create(name: "lemon")
ice = Ingredient.create(name: "ice")
mint_leaves = Ingredient.create(name: "mint leaves")

puts "Create some doses"
Dose.create! cocktail: screwdriver, ingredient: lemon, description: "200ml"
Dose.create! cocktail: screwdriver, ingredient: ice, description: "50ml"
