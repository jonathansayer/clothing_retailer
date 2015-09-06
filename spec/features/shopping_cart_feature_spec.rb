require 'rails_helper'

feature 'shopping cart' do
  xcontext 'when no items have been added' do
    scenario 'should show that no items have been added to cart' do
    visit '/shopping_cart'
    expect(page).to have_content "No items in cart"
    end

    scenario 'should be able to add items to the cart' do
      Product.create(name: "Suede Shoes, Blue")
      visit '/'
      click_button "Add to Cart"
      expect(current_path).to eq "/shopping_cart"
      expect(page).to have_content "Suede Shoes, Blue"
    end

    xscenario 'should be able to remove items from the cart' do
      Product.create(name: "FlipFlops,Red")
      visit '/'
      click_button "Add to Cart"
      expect(current_path).to eq "/shopping_cart"
      click_button "Remove from Cart"
      expect(page).not_to have_content "FlipFlops,Red"
    end
  end
end
