class Category < ActiveRecord::Base
  belongs_to :user
  has_many :preferences,  dependent: :destroy

end
