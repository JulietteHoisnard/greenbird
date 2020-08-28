require "open-uri"
require 'json'
# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Challenge.destroy_all

puts "Creating challenges..."

one = Challenge.create!(
  title: "Commute by Bike",
  call_to_action: "I commute by bike today whether going to work, sports, or shopping, etc.",
  description: "Riding a bike accounts for about 21g of CO2 emissions per kilometer, which is more than ten times less than a car.",
  # photo
  link: "https://www.sciencedirect.com/science/article/pii/S0048969717301559",
  category: "Move",
  infobox_title: "Read more about benefits of cycling",
  infobox_desc: "Envrionmental benefits but not only!",
  infobox_link: "https://ecf.com/news-and-events/news/how-much-co2-does-cycling-really-save",
  impact_level: "medium",
  impact_co: 1000,
  impact_money: 10000,
  impact_desc: "air pollution, noise pollution, health, respiratory diseases"
)

file = URI.open('https://res.cloudinary.com/giuliettainthecloud/image/upload/v1598533195/greenbird/commutebybike_oockao.jpg')
one.photo.attach(io: file, filename: 'commutebybike.jpg', content_type: 'image/jpg')


puts "Challenge #{one.title} created!"

two = Challenge.create(
  title: "Eat Lower on the Food Chain",
  call_to_action: "I will have all vegetarian meals today",
  description: "Meat lovers have the highest carbon footprint at 3.3 tons of greenhouse gas emissions. A vegan diet has the lowest carbon footprint at just 1.5 tons CO2e (Carbon Dioxide Equivalent). You can reduce your foodprint by a quarter just by cutting down on red meats such as beef and lamb.",
  #photo
  link: "https://www.bbcgoodfood.com/recipes/collection/quick-veggie",
  category: "Eat",
  infobox_title: "Read more about being a vegetarian",
  infobox_desc: "There are many different options when it comes to consuming less meat",
  infobox_link:"https://www.healthline.com/health/becoming-vegetarian#types",
  impact_level: "medium",
  impact_co: 1325,
  impact_money: 300,
  impact_desc: "Discover more about vegetarianism"
)

file = URI.open('https://res.cloudinary.com/giuliettainthecloud/image/upload/v1598533203/greenbird/eatloweronthefoodchain_rn9vj3.jpg')
two.photo.attach(io: file, filename: 'eatloweronthefoodchain.jpg', content_type: 'image/jpg')


puts "Challenge #{two.title} created!"

three = Challenge.create(
  title: "Reduce Single-Use Plastic",
  call_to_action: "I bring my own bag and avoid plastic.",
  description: "Plastic is a non-biodegradable material and can take up to 2000 years to decompose. It ends up in oceans and in the stomachs of many animals. Totally getting rid of the use of plastic will save 60-100 million barrels of oil and slow the depletion of this valuable natural resource.",
  # photo
  link: "https://www.eartheclipse.com/environment/serious-effects-plastic-bags.html",
  category: "Live",
  infobox_title: "Read more about benefits of recycling",
  infobox_desc: "Environmental benefits but also a lifestyle benefit!",
  infobox_link: "https://www.who.int/globalchange/publications/factsheets/Kit2008_annex1_2.pdf?ua=1",
  impact_level: "medium",
  impact_co: 210,
  impact_money: 100,
  impact_desc: "Discover alternatives to plastic"
)

file = URI.open('https://res.cloudinary.com/giuliettainthecloud/image/upload/v1598533220/greenbird/singleuseplastic_rcwbhh.jpg')
three.photo.attach(io: file, filename: 'reducesingleuseplastic.jpg', content_type: 'image/jpg')

puts "Challenge #{three.title} created!"

four = Challenge.create(
  title: "Laundry",
  call_to_action: "I line-dry my clothes.",
  description: "Each drying cycle produces over 3 kg of CO2.
 emissions. One dryer load uses 5 times more electricity than washing – by simply line-drying your clothes, you can save 1/3 of their carbon footprint. Drying clothes naturally is by far the best way to do it: your clothes will last longer and the energy provided is free and non-polluting.",
  # photo
  link: "https://www.huffpost.com/entry/7-instant-ways-to-reduce-your-carbon-footprint_b_59321992e4b00573ab57a383",
  category: "Live",
  infobox_title: "Make your clothes last longer and save energy",
  infobox_desc: "Small but mighty changes",
  infobox_link: "https://www.theguardian.com/environment/green-living-blog/2010/nov/25/carbon-footprint-load-laundry",
  impact_level: "medium",
  impact_co: 210,
  impact_money: 100,
  impact_desc: "electricity, energy"
)

file = URI.open('https://res.cloudinary.com/giuliettainthecloud/image/upload/v1598533212/greenbird/laundry_gerqqj.jpg')
four.photo.attach(io: file, filename: 'laundry.jpg', content_type: 'image/jpg')

puts "Challenge #{four.title} created!"

five = Challenge.create(
  title: "Minimalism",
  call_to_action: "I will have an open mind towards minimalism.",
  description: "I will take steps towards living a minimal lifestyle to evaluate, declutter, and practice conscious purchasing.",
  # photo
  link: "https://link.springer.com/article/10.1007/s41042-020-00030-y",
  category: "Live",
  infobox_title: "Quality over quantity",
  infobox_desc: "Minimalize Waster with a Minimalist Lifestyle",
  infobox_link: "https://minimalismfilm.com/",
  impact_level: "medium",
  impact_co: 100,
  impact_money: 100,
  impact_desc: "sustainable lifestyle"
)

file = URI.open('https://res.cloudinary.com/giuliettainthecloud/image/upload/v1598533216/greenbird/minimalism_tdcdz1.jpg')
five.photo.attach(io: file, filename: 'minimalism.jpg', content_type: 'image/jpg')

puts "Challenge #{five.title} created!"
