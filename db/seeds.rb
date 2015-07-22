# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

Review.destroy_all
Hotel.destroy_all

Hotel.create!([

{

  name: 'Luxury',
  rating: 4,
  breakfast: true,
  description: 'Not bad! but not good =)',
  price: 40,
  address: "Institutska 18"
}


])
