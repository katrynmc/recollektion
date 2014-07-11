class Category < ActiveRecord::Base
  belongs_to :user
  has_many :preferences
  accepts_nested_attributes_for :preferences

end
