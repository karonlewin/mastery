require 'rails_helper'

RSpec.describe Client, type: :model do
  let(:client) { build(:client) }

  it 'is not valid without a name' do
    client.name = nil
    expect(client).to_not be_valid
  end

  it 'is not valid without a mobile number' do
    client.mobile_number = nil
    expect(client).to_not be_valid
  end
end
