require 'rails_helper'

RSpec.feature 'User managing appointments:' do
  before { warden_sign_in user }

  let(:user) { create :user }
  let!(:appointment) { create :appointment }

  scenario 'listing all appointments' do
    visit appointments_path

    expect(page).to have_content(appointment.client)
    expect(page).to have_content(appointment.start_at)
    expect(page).to have_content(appointment.end_at)
  end

  scenario 'creating a new appointment' do
    visit appointments_path

    click_link 'New Appointment'

    fill_in 'Client', :with => appointment.client
    fill_in 'Start at', :with => appointment.start_at
    fill_in 'End at', :with => appointment.end_at
    click_button 'Create Appointment'

    expect(page).to have_content('Appointment was successfully created.')
    expect(page).to have_content(appointment.client)
    expect(page).to have_content(appointment.start_at)
    expect(page).to have_content(appointment.end_at)
  end

  scenario 'editing an appointment' do
    edited_appointment = build :appointment
    visit appointments_path

    click_link("edit-#{appointment.id}")

    fill_in 'Client', :with => edited_appointment.client
    fill_in 'Start at', :with => edited_appointment.start_at
    fill_in 'End at', :with => edited_appointment.end_at
    click_button 'Update Appointment'

    expect(page).to have_content('Appointment was successfully updated.')
    expect(page).to have_content(edited_appointment.client)
    expect(page).to have_content(edited_appointment.start_at)
    expect(page).to have_content(edited_appointment.end_at)
  end

  scenario 'deleting an appointment' do
    visit appointments_path

    expect { click_link("destroy-#{appointment.id}") }.to change(Appointment, :count).by(-1)
    expect(page).to have_content('Appointment was successfully destroyed.')
  end

end
