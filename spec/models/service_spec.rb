require 'rails_helper'

RSpec.describe Service, type: :model do
  let(:service) { build(:service) }

  it 'is not valid without a name' do
    service.name = nil
    expect(service).to_not be_valid
  end

  it 'is not valid without a price' do
    service.price = nil
    expect(service).to_not be_valid
  end

  it 'is not valid without a store' do
    service.store = nil
    expect(service).to_not be_valid
  end
end
