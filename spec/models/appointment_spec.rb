require 'rails_helper'

RSpec.describe Appointment, type: :model do
  let(:appointment) { build(:appointment) }

  it 'is not valid without a client' do
    appointment.client = nil
    expect(appointment).to_not be_valid
  end

  it 'is not valid without a scheduled time' do
    appointment.scheduled_at = nil
    expect(appointment).to_not be_valid
  end
end
