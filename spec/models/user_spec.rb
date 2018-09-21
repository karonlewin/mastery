require 'rails_helper'

RSpec.describe User, type: :model do
  let(:user) { build(:user) }

  it 'is not valid without an employee' do
    user.employee = nil
    expect(user).to_not be_valid
  end
end
