class ShoppingCartController < ApplicationController

  def index
    @in_cart = OrderedProduct.all
    @total = CartTotal.total_calculation
    if VoucherDiscount.a_voucher? session[:code]
      @code = session[:code]
      @total = VoucherDiscount.apply_discount @code, @total
    elsif session[:code]
      @error = "The Code you entered is Incorrect"
    end
  end

  def update
    @parameters = params
    UpdateOrderedItems.add_to_ordered_items params["product_name"]
    redirect_to(shopping_cart_url)
  end

  def delete
    RemoveFromCart.remove_product params["product_name"]
    redirect_to(shopping_cart_url)
  end

  def discount
  end

  def apply_discount
    session[:code] = params[:voucher][:code]
    redirect_to(shopping_cart_url)
  end


end
