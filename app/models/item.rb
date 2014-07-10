class Item < ActiveRecord::Base
  has_many :preferences
  belongs_to :brand
end
