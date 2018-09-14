require 'rails_helper'

RSpec.describe "appointments/index", type: :view do
  before(:each) do
    assign(:appointments, [
      Appointment.create!(
        :client => "Client"
      ),
      Appointment.create!(
        :client => "Client"
      )
    ])
  end

  it "renders a list of appointments" do
    render
    assert_select "tr>td", :text => "Client".to_s, :count => 2
  end
end
