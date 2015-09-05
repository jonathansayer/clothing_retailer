class UpdateOrderedItems

  def self.add_to_ordered_items product_id
    product = self.find_item product_id
    OrderedProduct.create(name:product.name, price:product.price)
  end

  private

  def self.find_item product_id
    Product.find(product_id)
  end

end
