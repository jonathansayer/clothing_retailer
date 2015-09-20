require 'rails_helper'

feature 'vouchers' do
  scenario 'a voucher code can be applied to the shopping cart' do
    visit '/shopping_cart'
    click_link "Redeem Voucher"
    expect(current_path).to eq '/shopping_cart_discount'
    fill_in('Code', :with => "5OFF")
    click_button 'Redeem Voucher'
    expect(current_path).to eq '/shopping_cart'
    expect(page).to have_content "You have Redeemed your Voucher"
  end

  scenario "when a wrong code voucher is applied, an error message is shown" do
    visit '/shopping_cart'
    click_link "Redeem Voucher"
    expect(current_path).to eq '/shopping_cart_discount'
    fill_in('Code', :with => "WRONG")
    click_button 'Redeem Voucher'
    expect(page).to have_content "The Code you entered is Incorrect"
  end

  scenario "When first visiting shopping there should be no text refering to a correct or incorrent voucher" do
    visit '/shopping_cart'
    expect(page).not_to have_content "You have Redeemed your Voucher"
    expect(page).not_to have_content "The Code you entered is Incorrect"
  end
end
