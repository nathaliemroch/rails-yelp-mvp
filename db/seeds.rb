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
    address:      '7 rue de la Roquette, Paris',
    category:     'chinese',
    stars:        3,
    phone_number: '0187658276'
  },
  {
    name:         'Phobun',
    address:      '80 boulevard Voltaire, Paris',
    category:     'belgian',
    stars:        2,
    phone_number: '0176827349'
  },
  {
    name:         'PNY',
    address:      '15 rue Cardinet, Paris',
    category:     'italian',
    stars:        5,
    phone_number: '0170587297'
  },
  {
    name:         'Melt',
    address:      '24 rue Oberkampf, Paris',
    category:     'japanese',
    stars:        4,
    phone_number: '0186423408'
  },
  {
    name:         'Scaria',
    address:      '33 boulevard Parmentier, Paris',
    category:     'french',
    stars:        1,
    phone_number: '0186587623'
  },
]
Restaurant.create!(restaurants_attributes)
puts 'Finished!'
