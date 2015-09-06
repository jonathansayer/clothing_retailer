require 'rails_helper'

describe UpdateOrderedItems do

  let(:subject) { UpdateOrderedItems }

  it 'the class method add_to_ordered_items must be called with an arguemnt' do
    expect(subject).to respond_to(:find_item)
  end

  it 'must add the Product to the OrderedItems table' do
    product = Product.create(name:'BirdPrintDress,Black')
    subject.add_to_ordered_items 'BirdPrintDress,Black'
    expect(OrderedProduct.first.name).to eq 'BirdPrintDress,Black'
  end

  describe 'finding duplicates' do
    it 'must be able to find products that have already been purchased' do
      product = Product.create(name:'BirdPrintDress,Black')
      subject.add_to_ordered_items 'BirdPrintDress,Black'
      expect(subject.find_duplicates 'BirdPrintDress,Black').to eq true
    end

    it 'if a duplicate is found, the quantity is increased by one' do
      product = Product.create(name:'BirdPrintDress,Black')
      subject.add_to_ordered_items 'BirdPrintDress,Black'
      subject.add_to_ordered_items 'BirdPrintDress,Black'
      expect(OrderedProduct.first.quantity).to eq 2
    end
  end
end
