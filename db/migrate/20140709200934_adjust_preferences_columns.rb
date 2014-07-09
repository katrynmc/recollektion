class AdjustPreferencesColumns < ActiveRecord::Migration
  def change
    remove_column(:preferences, :dependent_id)
    remove_column(:preferences, :brand)
    remove_column(:preferences, :product_name)
    add_column(:preferences, :item_id, :integer)
  end
end
