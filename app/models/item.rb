class Item < ActiveRecord::Base
  has_many :preferences
  belongs_to :brand

  validates :name, presence: true
end
