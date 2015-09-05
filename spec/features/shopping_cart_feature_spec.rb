require 'rails_helper'

feature 'shopping cart' do
  context 'when no items have been added' do
    scenario 'should show that no items have been added to cart' do
    visit '/shopping_cart'
    expect(page).to have_content "No items in cart"
    end

    scenario 'should be able to add items to the cart' do
      Product.create(name:"Suede Shoes, Blue")
      visit '/'
      click_button "Add to Cart"
      expect(current_path).to eq "/shopping_cart"
      expect(page).to have_content "Suede Shoes, Blue"
    end
  end
end
