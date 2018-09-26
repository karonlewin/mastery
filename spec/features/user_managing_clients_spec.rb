require 'rails_helper'

RSpec.feature 'User managing clients:' do
  before { warden_sign_in user }

  let(:user) { create :user }
  let!(:client) { create :client }
  let!(:new_client) { build :client }

  scenario 'listing all clients' do
    visit clients_path

    expect(page).to have_content(client.name)
    expect(page).to have_content(client.mobile_number)
  end

  scenario 'creating a new client' do
    visit clients_path

    click_link 'New Client'

    fill_in 'Name', :with => new_client.name
    fill_in 'Mobile number', :with => new_client.mobile_number

    click_button 'Create Client'

    expect(page).to have_content('Client was successfully created.')
    expect(page).to have_content(new_client.name)
    expect(page).to have_content(new_client.mobile_number)
  end

  scenario 'editing an client' do
    edited_client = build :client
    visit clients_path

    click_link("edit-#{client.id}")

    fill_in 'Name', :with => edited_client.name
    fill_in 'Mobile number', :with => edited_client.mobile_number

    click_button 'Update Client'

    expect(page).to have_content('Client was successfully updated.')
    expect(page).to have_content(edited_client.name)
    expect(page).to have_content(edited_client.mobile_number)
  end

  scenario 'deleting an client' do
    visit clients_path

    expect { click_link("destroy-#{client.id}") }.to change(Client, :count).by(-1)
    expect(page).to have_content('Client was successfully destroyed.')
  end

end
