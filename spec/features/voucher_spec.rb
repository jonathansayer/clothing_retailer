require 'rails_helper'

feature 'vouchers' do
  scenario 'a voucher code can be applied to the shopping cart' do
    visit '/shopping_cart'
    click_link "Redeem Voucher"
    expect(current_path).to eq '/shopping_cart_discount'
    fill_in('Code', :with => "5OFF")
    click_button 'Redeem Voucher'
    expect(page).to have_content "You have Redeemed you Voucher"
  end
end
