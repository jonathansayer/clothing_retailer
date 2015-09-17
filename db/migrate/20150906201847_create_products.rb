class CreateProducts < ActiveRecord::Migration
  def change
    create_table :products do |t|
      t.string :name
      t.decimal :price, :precision => 30, :scale => 10
      t.integer :stock
      t.string :catagory
      t.string :img

      t.timestamps null: false
    end
  end
end
