require 'rails_helper'

describe RemoveFromCart do
  let(:subject) { RemoveFromCart }

  context 'when there are no duplicates in the cart' do

    it'should respond to find_product_in_cart with one argument' do
      expect(subject).to respond_to(:find_product_in_cart).with(1).argument
    end

    it'should be able to find an Ordered Product' do
      product = Product.create(name: 'GoldButtonCardigan,Black', quantity: 2)
      ordered_product = OrderedProduct.create(name: 'GoldButtonCardigan,Black')
      expect(subject.find_product_in_cart 'GoldButtonCardigan,Black').to eq ordered_product
    end

    it 'should be able to remove an item for the Ordered Products' do
      product = Product.create(name: 'GoldButtonCardigan,Black', quantity: 2)
      ordered_product = OrderedProduct.create(name: 'GoldButtonCardigan,Black', quantity: 1)
      subject.remove_product 'GoldButtonCardigan,Black'
      expect(OrderedProduct.exists?).to eq false
    end
  end

  context 'when there are duplicate items in the cart' do

    it 'should be able to determine is more than one of the same item are in the cart' do
      product = Product.create(name: 'GoldButtonCardigan,Black', quantity: 2)
      OrderedProduct.create(name: 'GoldButtonCardigan,Black',quantity: 2)
      expect(subject.more_than_one? 'GoldButtonCardigan,Black' ).to eq true
    end

    it 'should decrease the quantity by 1 is there is more than one of the same item in the cart' do
      product = Product.create(name: 'GoldButtonCardigan,Black', quantity: 2)
      ordered_product = OrderedProduct.create(name: 'GoldButtonCardigan,Black', quantity: 2)
      subject.remove_product 'GoldButtonCardigan,Black'
      expect(OrderedProduct.first.quantity).to be 1
    end
  end

  it 'should add one to the stock if removed from the cart' do
    product = Product.create(name: 'GoldButtonCardigan,Black', quantity: 2)
    ordered_product = OrderedProduct.create(name: 'GoldButtonCardigan,Black', quantity: 1)
    subject.remove_product 'GoldButtonCardigan,Black'
    expect(Product.first.quantity).to eq 3
  end


end
