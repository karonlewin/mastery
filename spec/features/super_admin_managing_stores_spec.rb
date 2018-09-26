require 'rails_helper'

RSpec.feature 'SuperAdmin managing stores:' do
  before { warden_sign_in user }

  let(:user) { create :user }
  let!(:store) { create :store }
  let!(:new_store) { build :store }

  scenario 'listing all stores' do
    visit stores_path

    expect(page).to have_content(store.name)
    expect(page).to have_content(store.subdomain)
  end

  scenario 'creating a new store' do
    visit stores_path

    click_link 'New Store'

    fill_in 'Name', :with => new_store.name
    fill_in 'Subdomain', :with => new_store.subdomain

    click_button 'Create Store'

    expect(page).to have_content('Store was successfully created.')
    expect(page).to have_content(new_store.name)
    expect(page).to have_content(new_store.subdomain)
  end

  scenario 'editing an store' do
    edited_store = build :store
    visit stores_path

    click_link("edit-#{store.id}")

    fill_in 'Name', :with => edited_store.name
    fill_in 'Subdomain', :with => edited_store.subdomain

    click_button 'Update Store'

    expect(page).to have_content('Store was successfully updated.')
    expect(page).to have_content(edited_store.name)
    expect(page).to have_content(edited_store.subdomain)
  end

  scenario 'deleting an store' do
    visit stores_path

    expect { click_link("destroy-#{store.id}") }.to change(Store, :count).by(-1)
    expect(page).to have_content('Store was successfully destroyed.')
  end

end
