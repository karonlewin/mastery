require 'rails_helper'

RSpec.describe Appointment, type: :model do
  let(:appointment) { build(:appointment) }

  it 'is not valid without a client' do
    appointment.client = nil
    expect(appointment).to_not be_valid
  end

  it 'is not valid without a start_at time' do
    appointment.start_at = nil
    expect(appointment).to_not be_valid
  end

  it 'is not valid without a end_at time' do
    appointment.end_at = nil
    expect(appointment).to_not be_valid
  end

  it 'is not valid without an user' do
    appointment.user = nil
    expect(appointment).to_not be_valid
  end

  xit 'is not valid without a studio' do
    appointment.studio = nil
    expect(appointment).to_not be_valid
  end
end
