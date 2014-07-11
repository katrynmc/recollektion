Category.delete_all
Brand.delete_all
Item.delete_all
Preference.delete_all
User.delete_all

k = User.create(email: 'katryn@example.com', password: '12345678', password_confirmation: '12345678')

categories = []
%w{books dogfood eatingwithfriend medications movies video games makeup }.each do |cat|
  puts "Creating Category #{cat}"
  categories << Category.create!(user: k, name: cat)
end

# categories = Category.create([{ user_id: k.id, name: 'books' }, { user_id: k.id, name: 'dog food' }, { user_id: k.id, name: 'eating with friends'}, { user_id: k.id, name: 'medications' }, { user_id: k.id, name: 'movies' }, { user_id: k.id, name: 'video games' }, { user_id: k.id, name: 'makeup' }, { user_id: k.id, name: 'dog toys' }])


# brands = Brand.create([{ name: 'J.K. Rowling', id: 1 }, { name: 'Wellness' , id: 2  }, { name: 'Coca-Cola', id: 3  }, { name: 'Cover Girl', id: 4 }, { name: 'Starbucks',  id: 5  }, { name: 'Dunkin Donuts', id: 6  }, { name: 'Irrational Games', id: 7  }, { name: 'Apple', id: 8  }])

brands = []
['J.K. Rowling', 'Wellness', 'Coca-Cola', 'Cover Girl', 'Starbucks'].each do |brand_name|
  puts "Creating Brand #{brand_name}"
  brands << Brand.create!(name: brand_name)
end

items = []
['Harry Potter', 'Diet Coke', 'Sprite', 'Caramel Macchiato', 'The Help', 'Bic #2 Pencil', 'Bioshock Infinite', 'Ipod'].each do |item_name|
  puts "Creating Item #{item_name}"
  items << Item.create(name: item_name, brand: brands.sample)
end

["Ive never tried", "Smells funny", 'Yuck', 'I want a million', 'Gimme'].each do |comment|
  category = categories.sample
  puts "Creating Prefenence with #{comment}"
  Preference.create(category: categories.sample, user: k, item: items.sample, score: rand(1..5), comment: "hello")
end

# Preference.create(category_id: 1, item_id: 6, score: 5, comment: 'I\'ve never tried anything else as amazing as this.')
# exit
# Preference.create(category_id: 1, item_id: 2, score: 4, comment: 'Smells funny.')

# Preference.create(category_id: 2, item_id: 8, score: 3, comment: 'Yuck.')

# Preference.create(category_id: 4, item_id: 5, score: 5, comment: 'I want a million.')

# Preference.create(category_id: 3, item_id: 7, score: 4, comment: 'Gimme.')

# items = Item.create([{ name: 'Harry Potter', id: 1  }, { name: 'Diet Coke', id: 2  }, { name: 'Sprite', id: 3  }, { name: 'Caramel Macchiato', id: 4  }, { name: 'The Help', id: 5  }, { name: 'Bic #2 Pencil', id: 6  }, { name: 'Bioshock Infinite', id: 7  }, { name: 'Ipod', id: 8  }])

# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
