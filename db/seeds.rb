categories = Category.create([{ name: 'books' }, { name: 'dog food' }, { name: 'eating with friends' }, { name: 'medications' }, { name: 'movies' }, { name: 'video games' }, { name: 'makeup' }, { name: 'dog toys' }])

Preference.create(brand: 'wellness', product_name: 'CORE Ocean Formula Adult Dog Food', score: 4, comment: 'Smells kinda fishy, but he seems to tolerate it well', category_id: 1)

Preference.create(brand: 'Coca-Cola', product_name: 'Diet Coke', score: 5, comment: 'Delicious', category_id: 2)

Preference.create(brand: 'Coca-Cola', product_name: 'Sprite', score: 3, comment: 'Okay', category_id: 15)

Preference.create(brand: 'Starbucks', product_name: 'Coffee', score: 4, comment: 'Delicious', category_id: 1)

Preference.create(brand: 'Dunkin Donuts', product_name: 'Coffee', score: 3, comment: 'Delicious', category_id: 12)

Preference.create(brand: 'Tropicana', product_name: 'Orange Juice', score: 5, comment: 'Delicious', category_id: 1)

Preference.create(brand: 'Hawaiian Punch', product_name: 'Fruit Punch', score: 2, comment: 'Wowowoowowowow', category_id: 8)

Preference.create(brand: 'Odwalla', product_name: 'Mango Smoothie', score: 5, comment: 'So amaze', category: 1)

# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
