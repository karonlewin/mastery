require 'rails_helper'

RSpec.describe Store, type: :model do
  let(:store) { build(:store) }

  it 'is not valid without a name' do
    store.name = nil
    expect(store).to_not be_valid
  end

  it 'is not valid without a subdomain' do
    store.subdomain = nil
    expect(store).to_not be_valid
  end
end
