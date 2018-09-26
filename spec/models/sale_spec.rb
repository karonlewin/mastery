require 'rails_helper'

RSpec.describe Sale, type: :model do
  let(:sale) { build(:sale) }

  it 'is not valid without a client' do
    sale.client = nil
    expect(sale).to_not be_valid
  end

  it 'is not valid without a user' do
    sale.user = nil
    expect(sale).to_not be_valid
  end
end
