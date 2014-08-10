class Brand < ActiveRecord::Base
  has_many :items
  has_and_belongs_to_many :preferences

  validates :name, presence: true
end
