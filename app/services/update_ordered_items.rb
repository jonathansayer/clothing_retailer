class UpdateOrderedItems

  def self.add_to_ordered_items product_name
    product = self.find_item product_name
    product.update_attribute(:stock, product.stock -= 1)
    if self.find_duplicates product_name
      product_in_basket = OrderedProduct.find_by name:product_name
      product_in_basket.update_attribute(:quantity ,product_in_basket.quantity += 1)
    else
      OrderedProduct.create(name: product.name, price: product.price,catagory: product.catagory, quantity: 1)
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
