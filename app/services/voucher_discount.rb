class VoucherDiscount

  def self.a_voucher? voucher_code
    self.five_pound_off? voucher_code or self.ten_pound_off? voucher_code
  end

  def self.apply_discount voucher_code, total
    return total = total - 10 if self.ten_pound_off? voucher_code and total >= 50
    return total = total - 5 if self.five_pound_off? voucher_code
    return "fail"
  end

  private
  def self.five_pound_off? voucher_code
    voucher_code == "5OFF"
  end

  def self.ten_pound_off? voucher_code
    voucher_code == "10OFF"
  end

end
