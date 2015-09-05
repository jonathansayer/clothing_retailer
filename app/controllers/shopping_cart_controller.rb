class ShoppingCartController < ApplicationController

  def index
    @in_cart = OrderedProduct.all
  end

  def update
    @parameters = params
    UpdateOrderedItems.add_to_ordered_items params["product_id"]
    redirect_to(shopping_cart_url)
  end
end
