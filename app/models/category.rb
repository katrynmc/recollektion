class Category < ActiveRecord::Base
  belongs_to :user
  has_many :preferences,  dependent: :destroy

  validates :name, presence: true
end
