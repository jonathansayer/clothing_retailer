require 'rails_helper'

feature 'shopping cart' do
  context 'when no items have been added' do
    scenario 'should show that no items have been added to cart' do
    visit '/shopping_cart'
    expect(page).to have_content "No items in cart"
    end

    scenario 'should be able to add items to the cart' do
      Product.create(name: "Suede Shoes, Blue",price: 42.00, quantity:1)
      visit '/'
      click_button "Suede Shoes, Blue"
      expect(current_path).to eq "/shopping_cart"
      expect(page).to have_content "Suede Shoes, Blue"
    end

    scenario 'should be able to remove items from the cart' do
      Product.create(name: "FlipFlops,Red",price: 19.00, quantity:1)
      visit '/'
      click_button 'FlipFlops,Red'
      expect(current_path).to eq "/shopping_cart"
      click_button "Remove from Cart"
      expect(page).not_to have_content "FlipFlops,Red"
    end

    scenario 'should display the price of the individual items' do
      OrderedProduct.create(name: "AlmondToeCourtShoes,PatentBlack", price: 99.00, quantity:1)
      OrderedProduct.create(name: "SuedeShoes,Blue", price: 42.00, quantity:1)
      OrderedProduct.create(name: "LeatherDriverSaddleLoafers,Tan", price:34.00, quantity:1)
      visit '/shopping_cart'
      expect(page).to have_content "£99.00"
      expect(page).to have_content "£42.00"
      expect(page).to have_content "£34.00"
    end

    scenario 'should display totals for individual items ' do
      OrderedProduct.create(name: "AlmondToeCourtShoes,PatentBlack", price: 99.00, quantity: 2)
      OrderedProduct.create(name: "SuedeShoes,Blue", price: 42.00, quantity: 3)
      OrderedProduct.create(name: "LeatherDriverSaddleLoafers,Tan", price:34.00, quantity: 4)
      visit '/shopping_cart'
      expect(page).to have_content "£198.00"
      expect(page).to have_content "£126.00"
      expect(page).to have_content "£136.00"
    end



  end
end
