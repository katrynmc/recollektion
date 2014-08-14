class Preference < ActiveRecord::Base
  belongs_to :user
  belongs_to :category
  belongs_to :item
  belongs_to :brand
  has_attached_file :preference_image, styles: {
    thumb: '250x100#',
    square: '200x200#',
    medium: '300x300>'
  }
  validates_attachment_content_type :preference_image, :content_type => /\Aimage\/.*\Z/
end
