require 'rails_helper'

RSpec.feature 'User managing services:' do
  before { warden_sign_in user }

  let(:user) { create :user }
  let!(:service) { create :service }
  let!(:new_service) { build :service }

  scenario 'listing all services' do
    visit services_path

    expect(page).to have_content(service.name)
    expect(page).to have_content(service.price)
  end

  scenario 'creating a new service' do
    visit services_path

    click_link 'New Service'

    fill_in 'Name', :with => new_service.name
    fill_in 'Price', :with => new_service.price

    click_button 'Create Service'

    expect(page).to have_content('Service was successfully created.')
    expect(page).to have_content(new_service.name)
    expect(page).to have_content(new_service.price)
  end

  scenario 'editing an service' do
    edited_service = build :service
    visit services_path

    click_link("edit-#{service.id}")

    fill_in 'Name', :with => edited_service.name
    fill_in 'Price', :with => edited_service.price

    click_button 'Update Service'

    expect(page).to have_content('Service was successfully updated.')
    expect(page).to have_content(edited_service.name)
    expect(page).to have_content(edited_service.price)
  end

  scenario 'deleting an service' do
    visit services_path

    expect { click_link("destroy-#{service.id}") }.to change(Service, :count).by(-1)
    expect(page).to have_content('Service was successfully destroyed.')
  end

end
