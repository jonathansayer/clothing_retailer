class CartTotal

  def self.total_calculation
    total = 0
    products = OrderedProduct.all
    products.each do |product|
      total += product.price * product.quantity
    end
    total
  end

end
