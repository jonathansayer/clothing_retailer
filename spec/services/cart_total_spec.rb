require 'rails_helper'

describe CartTotal do

  let(:subject) { CartTotal }

  it 'should respond to total_calculation' do
    expect(subject).to respond_to(:total_calculation)
  end

  it 'should return the total of all items in the ordered_products database' do
    OrderedProduct.create(name: "AlmondToeCourtShoes,PatentBlack", price: 99.00, quantity:1)
    OrderedProduct.create(name: "SuedeShoes,Blue", price: 42.00, quantity:1)
    OrderedProduct.create(name: "LeatherDriverSaddleLoafers,Tan", price:34.00, quantity:1)
    expect(subject.total_calculation).to eq 175
  end

  it 'should return the total for all items when there are more than one of each item' do
    OrderedProduct.create(name: "AlmondToeCourtShoes,PatentBlack", price: 99.00, quantity: 2)
    OrderedProduct.create(name: "SuedeShoes,Blue", price: 42.00, quantity: 3)
    OrderedProduct.create(name: "LeatherDriverSaddleLoafers,Tan", price:34.00, quantity: 4)
    expect(subject.total_calculation).to eq 460
  end
  
end
