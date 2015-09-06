class UpdateOrderedItems

  def self.add_to_ordered_items product_name
    if  self.find_duplicates product_name
      product = OrderedProduct.find_by name:product_name
      product.update_attribute(:quantity, product.quantity += 1)
    else
      product = self.find_item product_name
      OrderedProduct.create(name: product.name, price: product.price, quantity: 1)
    end
  end

  def self.find_duplicates product_name
    OrderedProduct.exists?(name:product_name)
  end

  private

  def self.find_item product_name
    Product.find_by name:product_name
  end

end
