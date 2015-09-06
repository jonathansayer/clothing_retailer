class ChangePrecisonToProducts < ActiveRecord::Migration
  def change
    change_column :products, :price, :decimal, :precision => 10, :scale => 2
    change_column :ordered_products, :price, :decimal, :precision => 10, :scale => 2
  end
end
