class VoucherDiscount

  def self.a_voucher? voucher_code
    self.five_pound_off? voucher_code or self.ten_pound_off? voucher_code or self.fifteen_pound_off? voucher_code
  end

  def self.apply_discount voucher_code, total
    return total = total - self.discount_amount(voucher_code, total)
  end

  def self.discount_amount voucher_code, total
    return 5 if voucher_code == "5OFF"
    return 10 if voucher_code == "10OFF" and total >= 50
    return 15 if voucher_code == "15OFF" and total >= 75 and OrderedProduct.exists?(catagory:['Men’s Footwear','Womans Footwear'])
    return 0
  end

  private
  def self.five_pound_off? voucher_code
    voucher_code == "5OFF"
  end

  def self.ten_pound_off? voucher_code
    voucher_code == "10OFF"
  end

  def self.fifteen_pound_off? voucher_code
    voucher_code =="15OFF"
  end

end
