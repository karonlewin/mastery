require 'rails_helper'

RSpec.describe Studio, type: :model do
  let(:studio) { build(:studio) }

  it 'is not valid without a name' do
    studio.name = nil
    expect(studio).to_not be_valid
  end
end
