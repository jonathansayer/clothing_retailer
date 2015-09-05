require 'rails_helper'

feature 'shopping cart' do
  context 'when no items have been added' do
    scenario 'should show that no items have been added to cart' do
    visit '/shopping_cart'
    expect(page).to have_content "No items in cart"
    end
  end
end
