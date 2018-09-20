require 'rails_helper'

RSpec.describe "clients/index", type: :view do
  before(:each) do
    assign(:clients, [
      Client.create!(
        :name => "Name",
        :mobile_number => "Mobile Number"
      ),
      Client.create!(
        :name => "Name",
        :mobile_number => "Mobile Number"
      )
    ])
  end

  it "renders a list of clients" do
    render
    assert_select "tr>td", :text => "Name".to_s, :count => 2
    assert_select "tr>td", :text => "Mobile Number".to_s, :count => 2
  end
end
