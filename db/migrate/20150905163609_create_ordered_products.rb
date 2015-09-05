class CreateOrderedProducts < ActiveRecord::Migration
  def change
    create_table :ordered_products do |t|
      t.string :name
      t.float :price
      t.integer :quantity

      t.timestamps null: false
    end
  end
end
