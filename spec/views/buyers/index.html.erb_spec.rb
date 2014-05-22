require 'spec_helper'

describe "buyers/index" do
  before(:each) do
    assign(:buyers, [
      stub_model(Buyer,
        :first_name => "First Name",
        :last_name => "Last Name",
        :email => "Email",
        :password => "Password"
      ),
      stub_model(Buyer,
        :first_name => "First Name",
        :last_name => "Last Name",
        :email => "Email",
        :password => "Password"
      )
    ])
  end

  it "renders a list of buyers" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "First Name".to_s, :count => 2
    assert_select "tr>td", :text => "Last Name".to_s, :count => 2
    assert_select "tr>td", :text => "Email".to_s, :count => 2
    assert_select "tr>td", :text => "Password".to_s, :count => 2
  end
end
