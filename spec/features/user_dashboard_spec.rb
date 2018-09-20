require 'rails_helper'

RSpec.feature 'User at dashboard:' do

  let!(:appointment) { create :appointment }

  it 'User see all appointments on calendar', js: true do
    visit dashboard_path

    expect(page).to have_text(appointment.client.name)
  end

end
