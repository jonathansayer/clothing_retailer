require 'rails_helper'

feature 'products' do
  context 'when products are available' do
    scenario 'products should be displayed on the home page' do
      Products.create(name:"SuedeShoes,Blue")
      visit '/'
      expect(page).to have_content("SuedeShoes,Blue")
    end
  end
end
