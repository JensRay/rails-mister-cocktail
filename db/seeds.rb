# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


require 'json'
require 'open-uri'

puts "Deleting ingredients..."
Ingredient.destroy_all
puts "Ingredients deleted"

puts "Deleting cocktails..."
Cocktail.destroy_all
puts "Cocktails deleted"

puts "Creating ingredients"
url = 'https://www.thecocktaildb.com/api/json/v1/1/list.php?i=list'
ingredients = JSON.parse(open(url).read)
ingredients["drinks"].each do |ingredient|
  i = Ingredient.create(name: ingredient["strIngredient1"])
  puts "created #{i.name}"
end
mint = Ingredient.create(name: 'Mint')
puts "created #{mint.name}"

sugar_syrup = Ingredient.create(name: 'Sugar Syrup')
puts "created #{sugar_syrup.name}"

lime_juice = Ingredient.create(name: 'Lime Juice')
puts "created #{lime_juice.name}"

gin = Ingredient.create(name: 'Gin')
puts "created #{gin.name}"

dry_vermouth = Ingredient.create(name: 'Dry Vermouth')
puts "created #{dry_vermouth.name}"

lemon_twist = Ingredient.create(name: 'Lemon Twist')
puts "created #{lemon_twist.name}"

tequila = Ingredient.create(name: 'Tequila')
puts "created #{tequila.name}"

orange_juice = Ingredient.create(name: 'Orange Juice')
puts "created #{orange_juice.name}"

grenadine = Ingredient.create(name: 'Grenadine')
puts "created #{grenadine.name}"

vodka = Ingredient.create(name: 'Vodka')
puts "created #{vodka.name}"

ginger_beer = Ingredient.create(name: 'Ginger Beer')
puts "created #{ginger_beer.name}"

bourbon = Ingredient.create(name: 'Bourbon')
puts "created #{bourbon.name}"

sweet_vermouth = Ingredient.create(name: 'Sweet Vermouth')
puts "created #{sweet_vermouth.name}"

angostura_bitters = Ingredient.create(name: 'Angostura Bitters')
puts "created #{angostura_bitters.name}"

cola = Ingredient.create(name: 'Cola')
puts "created #{cola.name}"

triple_sec = Ingredient.create(name: 'Triple Sec')
puts "created #{triple_sec.name}"

salt = Ingredient.create(name: 'Salt')
puts "created #{salt.name}"

pinapple = Ingredient.create(name: 'Pinapple')
puts "created #{pinapple.name}"

cream = Ingredient.create(name: 'Cream')
puts "created #{cream.name}"

coconut_cream = Ingredient.create(name: 'Coconut Cream')
puts "created #{coconut_cream.name}"

citrus_vodka = Ingredient.create(name: 'Citrus Vodka')
puts "created #{citrus_vodka.name}"

orange_bitters = Ingredient.create(name: 'Orange Bitters')
puts "created #{orange_bitters.name}"

sugar = Ingredient.create(name: 'Sugar')
puts "created #{sugar.name}"

campari = Ingredient.create(name: 'Campari')
puts "created #{campari.name}"

puts "Ingredients created"

# no_of_cocktails = Cocktail.count
# count = 1
# 100.times do
#   Review.create(rating: rand(4..5), cocktail_id: rand(1..no_of_cocktails))
#   puts "#{count} reviews created"
#   count += 1
# end

# count = 1
# 15.times do
#   Review.create(rating: rand(1..3), cocktail_id: rand(1..no_of_cocktails))
#   puts "#{count} reviews created"
#   count += 1
# end
