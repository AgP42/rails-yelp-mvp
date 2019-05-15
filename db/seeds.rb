# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
puts 'Cleaning database...'
Restaurant.destroy_all

puts 'Creating restaurants...'
restaurants_attributes = [
  {
    name:         'Dishoom',
    address:      '7 Boundary St, London E2 7JE',
    phone_number:  '+ 33 6 78 87 777',
    category:      'chinese'
  },
  {
    name:         'Pizza East',
    address:      '56A Shoreditch High St, Berlin E1 6PQ',
    phone_number:  '0156349856',
    category:       'italian'
  },
  {
    name:         'Mustafa',
    address:      '7 Boundary St, London E2 7JE',
    phone_number:  '+447639',
    category:       'belgian'
  },
  {
    name:         'Vin pearl',
    address:      '56A Shoreditch High St, Berlin E1 6PQ',
    phone_number:  '06665645656567',
    category:        'japanese'
  },
  {
    name:         'Imnu',
    address:      '56A Shoreditch High St, Paris E1 6PQ',
    phone_number:  '05 67 65 55 54',
    category:        'french'
  }
]
Restaurant.create!(restaurants_attributes)
puts 'Finished!'
