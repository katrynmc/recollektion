class Preference < ActiveRecord::Base
  belongs_to :user
  belongs_to :category
  belongs_to :item
  belongs_to :brand
  has_attached_file :preference_image, :styles => { :medium => "300x300>", :thumb => "100x100>" }, :default_url => "/images/:style/missing.png"
  validates_attachment_content_type :preference_image, :content_type => /\Aimage\/.*\Z/
end
