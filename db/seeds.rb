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
  call_to_action: "I commute by bike today whether going to work, sports, or shopping",
  description: "Grab your bike and cycle to your destination. It's ten times more environmentally friendly than going by car — and you get some fresh air too! Need help to find a bike? Click on the Discover more button!",
  # photo is added via cloudinary
  link: "https://citymapper.com/london?lang=en",
  category: "transport",
  infobox_title: "The benefits of cycling",
  infobox_desc: "It's good for the environment and your health!",
  infobox_link: "https://ecf.com/news-and-events/news/how-much-co2-does-cycling-really-save",
  impact_level: "medium",
  impact_co: 2895,
  impact_money: 4500,
  impact_desc: "Reduces air pollution and noise pollution. Improves health and wards off respiratory diseases"
)

file = URI.open('https://res.cloudinary.com/giuliettainthecloud/image/upload/v1598533195/greenbird/commutebybike_oockao.jpg')
one.photo.attach(io: file, filename: 'commutebybike.jpg', content_type: 'image/jpg')


puts "Challenge #{one.title} created!"

two = Challenge.create(
  title: "Eat Lower on the Food Chain",
  call_to_action: "I will have all vegetarian meals today",
  description: "Vegetarian meals can be healthier and more cost-effective than meat-based diets, not to mention that meat lovers have a much higher carbon footprint. You can reduce your footprint by a quarter just by cutting down on red meats such as beef and lamb.",
  # photo is added via cloudinary
  link: "https://www.bbcgoodfood.com/recipes/collection/quick-veggie",
  category: "food",
  infobox_title: "Read more about being a vegetarian",
  infobox_desc: "There are many different options when it comes to consuming less meat.",
  infobox_link:"https://www.healthline.com/health/becoming-vegetarian#types",
  impact_level: "medium",
  impact_co: 1325,
  impact_money: 300,
  impact_desc: "Lower emissions of greenhouse gases"
)

file = URI.open('https://res.cloudinary.com/giuliettainthecloud/image/upload/v1598533203/greenbird/eatloweronthefoodchain_rn9vj3.jpg')
two.photo.attach(io: file, filename: 'eatloweronthefoodchain.jpg', content_type: 'image/jpg')


puts "Challenge #{two.title} created!"

three = Challenge.create(
  title: "Reduce Single-Use Plastic",
  call_to_action: "I bring my own bag and avoid plastic.",
  description: "Plastic can take up to 2000 years to decompose. In the meantime, it ends up in oceans and in the stomachs of many animals, making them sick. Getting rid of the use of plastic will also save millions of barrels of oil — a valuable natural resource.",
  # photo is added via cloudinary
  link: "https://www.eartheclipse.com/environment/serious-effects-plastic-bags.html",
  category: "zero waste",
  infobox_title: "Read more about benefits of recycling",
  infobox_desc: "Environmental benefits but also a lifestyle benefit!",
  infobox_link: "https://www.who.int/globalchange/publications/factsheets/Kit2008_annex1_2.pdf?ua=1",
  impact_level: "medium",
  impact_co: 210,
  impact_money: 100,
  impact_desc: "Reduces pollution and waste, conserves natural resources, and protects animals"
)

file = URI.open('https://res.cloudinary.com/giuliettainthecloud/image/upload/v1598533220/greenbird/singleuseplastic_rcwbhh.jpg')
three.photo.attach(io: file, filename: 'reducesingleuseplastic.jpg', content_type: 'image/jpg')

puts "Challenge #{three.title} created!"

four = Challenge.create(
  title: "Laundry",
  call_to_action: "I line-dry my clothes.",
  description: "One dryer load uses 5 times more electricity than washing – by simply line-drying your clothes, you can save 1/3 of their carbon footprint. Drying clothes naturally is by far the best way to do it: your clothes will last longer and the energy provided is free and non-polluting.",
  # photo is added via cloudinary
  link: "https://www.huffpost.com/entry/7-instant-ways-to-reduce-your-carbon-footprint_b_59321992e4b00573ab57a383",
  category: "home",
  infobox_title: "Make your clothes last longer and save energy",
  infobox_desc: "Small but mighty changes",
  infobox_link: "https://www.theguardian.com/environment/green-living-blog/2010/nov/25/carbon-footprint-load-laundry",
  impact_level: "medium",
  impact_co: 210,
  impact_money: 100,
  impact_desc: "Reduces electricity usage"
)

file = URI.open('https://res.cloudinary.com/giuliettainthecloud/image/upload/v1598533212/greenbird/laundry_gerqqj.jpg')
four.photo.attach(io: file, filename: 'laundry.jpg', content_type: 'image/jpg')

puts "Challenge #{four.title} created!"

five = Challenge.create(
  title: "Minimalism",
  call_to_action: "I will have an open mind towards minimalism.",
  description: "You can live more sustainably by reducing consumption and using long-lasting items. A great first step to take is to evaluate what you own, declutter, and practice conscious purchasing.",
  # photo is added via cloudinary
  link: "https://link.springer.com/article/10.1007/s41042-020-00030-y",
  category: "home",
  infobox_title: "Quality over quantity",
  infobox_desc: "Minimize Waste with a Minimalist Lifestyle",
  infobox_link: "https://minimalismfilm.com/",
  impact_level: "medium",
  impact_co: 100,
  impact_money: 100,
  impact_desc: "Reduces pollution and consumer waste"
)

file = URI.open('https://res.cloudinary.com/giuliettainthecloud/image/upload/v1598533216/greenbird/minimalism_tdcdz1.jpg')
five.photo.attach(io: file, filename: 'minimalism.jpg', content_type: 'image/jpg')

puts "Challenge #{five.title} created!"

six = Challenge.create(
  title: "Reusable bottle",
  call_to_action: "I use a reusable bottle and refuse any plastic bottles or plastic cup.",
  description: "A reusable water bottle takes less oil to produce, replaces all the plastics that you would have used and thereby reduces both your carbon footprint and helps reduce the plastic burden on landfills, oceans, streams and other places that plastic waste ends up.",
  # photo is added via cloudinary
  link: "https://monsterthreads.com.au/collections/monsterthreads-water-bottles-thermos",
  category: "zero waste",
  infobox_title: "Bring a water bottle everywhere",
  infobox_desc: "Discover the many advantages of using reusable bottles with this infographic!",
  infobox_link: "https://biofriendlyplanet.com/green-alternatives/reusables/the-environmental-advantages-of-reusable-water-bottles/",
  impact_level: "medium",
  impact_co: 30,
  impact_money: 1500,
  impact_desc: "Reduces amount of waste"
)

file = URI.open('https://res.cloudinary.com/giuliettainthecloud/image/upload/v1598533216/greenbird/water-bottles_rk4kqc.jpg')
six.photo.attach(io: file, filename: 'water_bottles.jpg', content_type: 'image/jpg')

puts "Challenge #{six.title} created!"

seven = Challenge.create(
  title: "Greenpeace",
  call_to_action: "I register to Greenpeace newsletter.",
  description: "I follow Greenpeace to be aware of the main current environmental issues the world is facing.",
  # photo is added via cloudinary
  link: "https://www.greenpeace.org.uk/",
  category: "civic action",
  infobox_title: "I sign a Greenpeace petition.",
  infobox_desc: "The more people support Greenpeace, the bigger the impact on the environment.",
  infobox_link: "https://www.greenpeace.org.uk/",
  impact_level: "medium",
  impact_co: 30,
  impact_money: 10,
  impact_desc: "Empowering citizens"
)

file = URI.open('https://res.cloudinary.com/giuliettainthecloud/image/upload/v1598533216/greenbird/markus-spiske-dkGjswObGPY-unsplash_oau2lw.jpg')
seven.photo.attach(io: file, filename: 'greenpeace.jpg', content_type: 'image/jpg')

puts "Challenge #{seven.title} created!"