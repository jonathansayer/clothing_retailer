class RemoveFromCart

  def self.remove_product product_name
    if self.more_than_one? product_name
      @product.update_attribute(:quantity, @product.quantity -= 1)
    else
      OrderedProduct.where(name:product_name).delete_all
    end
    product = Product.find_by(name:product_name)
    product.update_attribute(:stock, product.stock += 1)
  end

  private

  def self.more_than_one? product_name
    self.find_product_in_cart product_name
    @product.quantity > 1
  end

  def self.find_product_in_cart product_name
    @product = OrderedProduct.find_by name: product_name
  end
end
