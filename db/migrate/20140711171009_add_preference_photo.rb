class AddPreferencePhoto < ActiveRecord::Migration

  def self.up
    add_attachment :preferences, :preference_image
  end
  def self.down
    remove_attachment :preferences, :preference_image
  end

end
