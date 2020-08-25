require "open-uri"
require 'json'
# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

challengeONE = Challenge.create(title: "Commute by Bike", call_to_action: "I commute by bike today whether going to work, sports, or shopping, etc.", description: "Riding a bike accounts for about 21g of CO2 emissions per kilometer, which is more than ten times less than a car.", category: "move", impact_co: "61", impact_level: "medium")

challengeTWO = Challenge.create(title: "Eat Lower on the Food Chain", call_to_action: "I will have all vegetarian meals today", description: "Meat lovers have the highest carbon footprint at 3.3 tons of greenhouse gas emissions. A vegan diet has the lowest carbon footprint at just 1.5 tons CO2e (Carbon Dioxide Equivalent). You can reduce your foodprint by a quarter just by cutting down on red meats such as beef and lamb.", category: "eat", impact_co: "1325", impact_level: "medium")
