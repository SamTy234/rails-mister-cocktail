# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
require 'faker'

50.times do
  ingredient = Ingredient.new(
    name: Faker::Superhero.name
    )
  ingredient.save
end

# Ingredient.create(name: "lemon")
# Ingredient.create(name: "ice")
# Ingredient.create(name: "mint leaves")


10.times do
  cocktail = Cocktail.new(
    name: Faker::OnePiece.akuma_no_mi
    )
  cocktail.save
end

