class ShoppingCartController < ApplicationController

  def index
    @in_cart = OrderedProduct.all
    @original_total = CartTotal.total_calculation
    @discount = 0
    if VoucherDiscount.a_voucher? session[:code]
      @code = session[:code]
      @discount = VoucherDiscount.discount_amount @code, @original_total
      @new_total = VoucherDiscount.apply_discount @code, @original_total
    elsif session[:code]
      @error = "The Code you entered is Incorrect"
    end
  end

  def update
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
