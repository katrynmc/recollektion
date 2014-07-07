class CreatePreferences < ActiveRecord::Migration
  def change
    create_table :preferences do |t|
      t.references :category
      t.references :dependent
      t.text :brand
      t.text :product_name
      t.integer :score, index: true
      t.text :comment

      t.timestamps
    end
  end
end
