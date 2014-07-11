class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
  after_create :create_uncategorized

  has_many :preferences
  has_many :categories

  accepts_nested_attributes_for :preferences
  accepts_nested_attributes_for :categories

  def create_uncategorized
    self.categories.create!(name: "Uncategorized")
  end

end
