class CreateItem < ActiveRecord::Migration
  def change
    create_table :items do |t|
      t.text :name
      t.references :brand

      t.timestamps
    end
  end
end
