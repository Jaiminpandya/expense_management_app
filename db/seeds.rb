# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

Quantity.delete_all
#..........
Quantity.create(title: 'Vegetables',
   price: 485.00,
   day: 'Monday',
   month: 'June',
   year: 2014,
   expense_on: '07/12/2014'
   )
#..........
Quantity.create(title: 'Milk related products',
    price: 485.00,
   day: 'Monday',
   month: 'June',
   year: 2014,
   expense_on: '07/12/2014'
   )
#..........
Quantity.create(title: 'Petrol',
    price: 485.00,
   day: 'Tuesday',
   month: 'July',
   year: 2014,
   expense_on: '07/12/2014'
   )
#..........
Quantity.create(title: 'Light Bill',
   price: 485.00,
   day: 'Tuesday',
   month: 'July',
   year: 2014,
   expense_on: '07/12/2014'
   )
#..........
Quantity.create(title: 'Gas Bill',
   price: 485.00,
   day: 'Monday',
   month: 'May',
   year: 2014,
   expense_on: '07/12/2014'
   )
#..........
Quantity.create(title: 'Internet Bill',
    price: 485.00,
   day: 'Saturday',
   month: 'January',
   year: 2014,
   expense_on: '07/12/2014'
   )
#..........
Quantity.create(title: 'Investment money',
   price: 485.00,
   day: 'Sunday',
   month: "January",
   year: 2014,
   expense_on: '07/12/2014'
   )
#..........
Quantity.create(title: 'Water bill',
                price: 1669.3,
                day: 'Thursday',
                month: 'July',
                year: 2014,
               expense_on: '07/12/2014'
               )
#...........
Quantity.create(title: 'Hotel bill',
                price: 879.58,
                day: 'Thursday',
                month: 'July',
                year: 2014,
                expense_on: '07/12/2014'
               )
#...........
