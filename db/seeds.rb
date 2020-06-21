# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


#######
file = Rails.root.join('db/master_data/villagers.json')

villagers_list = JSON.parse(File.read(file))

villagers_list.values.each do |villager|
  Villager.create({
    name: villager['name']['name-USen'],
    personality: villager['personality'],
    birthday: villager['birthday'],
    species: villager['species'],
    gender: villager['gender'],
    catch_phrase: villager['catch-phrase'],
    icon_uri: villager['icon_uri'],
    image_uri: villager['image_uri'],
  })
  puts "#{villager['catch-phrase']}, I'm #{villager['name']['name-USen'] }"
end
#######