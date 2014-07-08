categories = Category.create([{ name: 'books' }, { name: 'dog food' }, { name: 'eating with friends' }, { name: 'medications' }, { name: 'movies' }, { name: 'video games' }, { name: 'makeup' }, { name: 'dog toys' }])

Preference.create(brand: 'wellness', product_name: 'CORE Ocean Formula Adult Dog Food', score: 4, comment: 'Smells kinda fishy, but he seems to tolerate it well')

Preference.create(brand: 'Coca-Cola', product_name: 'Diet Coke', score: 5, comment: 'Delicious')

# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
