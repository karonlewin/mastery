require 'rails_helper'

RSpec.describe Employee, type: :model do
  let(:employee) { build(:employee) }

  it 'is not valid without a name' do
    employee.name = nil
    expect(employee).to_not be_valid
  end

  it 'is not valid without a store' do
    employee.store = nil
    expect(employee).to_not be_valid
  end
end
