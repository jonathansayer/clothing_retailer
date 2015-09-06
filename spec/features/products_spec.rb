require 'rails_helper'

feature 'products' do
  context 'when products are available' do
    scenario 'products should be displayed on the home page' do
      Product.create(name:"Suede Shoes,Blue",quantity: 2)
      visit '/'
      expect(page).to have_content("Suede Shoes,Blue")
    end

    scenario 'should display the price of each product' do
      Product.create(name:"Suede Shoes,Blue", price: 42.00, quantity: 2)
      visit '/'
      expect(page).to have_content "£42.00"
    end

    scenario 'should not be able to be purchaed when out of stock' do
      Product.create(name:"Suede Shoes,Blue", price: 42.00, quantity: 0)
      visit '/'
      expect(page).not_to have_button "Add to Cart"
    end
  end
end
