# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

Quantity.delete_all
#..........
Quantity.create(title: 'Vegitables',
   price: 485.00)
#..........
Quantity.create(title: 'Milk related products',
   price: 1500.00)
#..........
Quantity.create(title: 'Petrol',
   price: 1500.00)
#..........
Quantity.create(title: 'Light Bill',
   price: 993.58)
#..........
Quantity.create(title: 'Gas Bill',
   price: 403.75)
#..........
Quantity.create(title: 'Internet Bill',
   price: 1112.43)
#..........
Quantity.create(title: 'Investment money',
   price: 2000.00)
#..........
