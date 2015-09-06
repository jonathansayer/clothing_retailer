class CreateProducts < ActiveRecord::Migration
  def change
    create_table :products do |t|
      t.string :name
      t.decimal :price, :precision => 30, :scale => 10
      t.integer :quantity
      t.string :catagory

      t.timestamps null: false
    end
  end
end
