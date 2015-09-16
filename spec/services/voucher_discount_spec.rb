require "rails_helper"

describe VoucherDiscount do

  let(:subject) { VoucherDiscount }

  it'respond to a_voucher' do
    expect(subject).to respond_to(:a_voucher?).with(1).argument
  end

  it'should be able to determine a £5 off voucher being used' do
    expect(subject.a_voucher? "5OFF").to eq true
  end

  it 'should be able to determine a £10 off voucher is being used' do
    expect(subject.a_voucher? "10OFF").to eq true
  end

  it 'should be able to determine a £15 off voucher is being used' do
    expect(subject.a_voucher? "15OFF").to eq true
  end

  it 'should discount 5 pound off total if 5OFF is used' do
    expect(subject.apply_discount "5OFF", 10).to eq 5
  end

  it 'should discount 10 pound off total is 10OFF is used and the total is greater than £50' do
    expect(subject.apply_discount "10OFF", 50).to eq 40
  end

  it 'should discount 15 pound off total if at least one footwear has been purchased and £75 has been spent' do
    OrderedProduct.create(name: "FlipFlops,Blue", price: 19.00, catagory: 'Men’s Footwear')
    expect(subject.apply_discount "15OFF", 75).to eq 60
  end

  it 'should not discount anything is a 15 pound off voucher is used and there is not footwear' do
      OrderedProduct.create(name: "GoldButtonCardigan, Black", price: 19.00, catagory: 'Women’s Casualwear')
      expect(subject.apply_discount "15OFF", 75).to eq 75
    end
end
