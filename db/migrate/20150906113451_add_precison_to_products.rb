class AddPrecisonToProducts < ActiveRecord::Migration
  def change
    change_column :products, :price, :decimal, :precision => 10, :scale => 5
  end
end
