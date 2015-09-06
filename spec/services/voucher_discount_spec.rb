require "rails_helper"

describe VoucherDiscount do

  let(:subject) { VoucherDiscount }

  it'respond to which_voucher' do
    expect(subject).to respond_to(:which_voucher).with(1).argument
  end

  it'should be able to determine a £5 off voucher being used' do
    expect(subject.which_voucher "5OFF").to eq "£5 Off"
  end

  it 'should be able to determine a £10 off voucher is being used' do
    expect(subject.which_voucher "10OFF").to eq "£10 off when you spend over £50"
  end

  it 'should discount 5 pound off total if 5OFF is used' do
    expect(subject.apply_discount "5OFF", 10).to eq 5
  end

  it 'should discount 10 pound off total is 10OFF is used and the total is greater than £50' do
    expect(subject.apply_discount "10OFF", 50).to eq 40
  end

end
