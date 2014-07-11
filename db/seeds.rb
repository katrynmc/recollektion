# categories = Category.create([{ name: 'books', id: 1  }, { name: 'dog food', id: 2  }, { name: 'eating with friends', id: 3  }, { name: 'medications', id: 4  }, { name: 'movies', id: 5  }, { name: 'video games', id: 6  }, { name: 'makeup', id: 7  }, { name: 'dog toys', id: 8  }])

# brands = Brand.create([{ name: 'J.K. Rowling', id: 1 }, { name: 'Wellness' , id: 2  }, { name: 'Coca-Cola', id: 3  }, { name: 'Cover Girl', id: 4 }, { name: 'Starbucks',  id: 5  }, { name: 'Dunkin Donuts', id: 6  }, { name: 'Irrational Games', id: 7  }, { name: 'Apple', id: 8  }])

# Preference.create(category_id: 1, item_id: 6, score: 5, comment: 'I\'ve never tried anything else as amazing as this.')

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
