require 'rails_helper'

RSpec.feature 'User managing sales:' do
  before { warden_sign_in user }

  let(:user) { create :user }
  let!(:new_sale) { build :sale }

  scenario 'creating a new sale' do
    visit sales_path

    click_link 'New Sale'

    select(new_sale.client.name, :from => 'sale[client_id]')

    click_button 'Create Sale'

    expect(page).to have_content('Sale was successfully created.')
    expect(page).to have_content(new_sale.client.name)
  end


end
