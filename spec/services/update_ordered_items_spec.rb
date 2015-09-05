require 'rails_helper'

describe UpdateOrderedItems do

  let(:subject) { UpdateOrderedItems}

  it 'the class method add_to_ordered_items must be called with an arguemnt' do
    expect(subject).to respond_to(:find_item)
  end

  it 'must add the Product to the OrderedItems table' do
    product = Product.create(id:3, name:'BirdPrintDress,Black')
    subject.add_to_ordered_items 3
    expect(OrderedProduct.first.name).to eq 'BirdPrintDress,Black'
  end
end
