# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create({ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

puts "Destroying old instances"
Restaurant.destroy_all

puts "Creating 5 new restaurants"

le_flacon = Restaurant.new(
  name: 'Le Flacon',
  address: 'Rue Vautier 45, 1227 Carouge',
  phone_number: '02 23 42 15 20',
  category: 'french')
le_flacon.save!

takayama = Restaurant.new(
  name: 'Takayama',
  address: 'Avenue d Ouchy 58, 1006 Lausanne',
  phone_number: '02 16 01 98 88',
  category: 'japanese'
  )
takayama.save!

alma = Restaurant.new(
  name: 'Alma',
  address: 'Rue Henri-Blanvalet 6, 1207 Genève',
  phone_number: '02 27 36 31 48',
  category: 'italian'
  )
alma.save!

bruxelles_cafe = Restaurant.new(
  name: 'Bruxelles Café',
  address: 'Place de la Riponne 1, 1005 Lausanne',
  phone_number: '02 13 11 33 01',
  category: 'belgian'
  )
bruxelles_cafe.save!

canard_pekinois = Restaurant.new(
  name: 'Au Canard Pékinois',
  address: 'Place Chauderon 16, 1003 Lausanne',
  phone_number: '02 13 29 03 23',
  category: 'japanese'
  )
canard_pekinois.save!

puts "Finished !"
