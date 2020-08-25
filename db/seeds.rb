require "open-uri"
require 'json'
# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

puts "Creating challenges..."

one = Challenge.create(
  title: "Commute by Bike", 
  call_to_action: "I commute by bike today whether going to work, sports, or shopping, etc.", 
  description: "Riding a bike accounts for about 21g of CO2 emissions per kilometer, which is more than ten times less than a car.",
  # photo
  link: "https://www.sciencedirect.com/science/article/pii/S0048969717301559",
  category: "move",
  infobox_title: "Read more about benefits of cycling",
  infobox_desc: "Envrionmental benefits but not only!",
  infobox_link: "https://www.sciencedirect.com/science/article/pii/S0048969717301559",
  impact_level: "medium",
  impact_co: 1000,
  impact_money: 10000,
  impact_desc: "air pollution, noise pollution, health, respiratory diseases"
)

puts "Challenge #{one.title} created!"

two = Challenge.create(
  title: "Eat Lower on the Food Chain", 
  call_to_action: "I will have all vegetarian meals today", 
  description: "Meat lovers have the highest carbon footprint at 3.3 tons of greenhouse gas emissions. A vegan diet has the lowest carbon footprint at just 1.5 tons CO2e (Carbon Dioxide Equivalent). You can reduce your foodprint by a quarter just by cutting down on red meats such as beef and lamb.", 
  #photo
  link: "https://www.bbcgoodfood.com/recipes/collection/quick-veggie",
  category: "eat", 
  infobox_title: "infobox_title",
  infobox_desc: "infobox_desc",
  infobox_link:"https://www.healthline.com/health/becoming-vegetarian#types",
  impact_level: "medium",
  impact_co: 1325,
  impact_money: 300,
  impact_desc: "Discover more about vegetarism"
)

puts "Challenge #{two.title} created!"
