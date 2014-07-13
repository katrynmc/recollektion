class Brand < ActiveRecord::Base
  has_many :items
  has_many :preferences
end
