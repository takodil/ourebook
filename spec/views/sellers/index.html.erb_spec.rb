require 'spec_helper'

describe "sellers/index" do
  before(:each) do
    assign(:sellers, [
      stub_model(Seller,
        :company_name => "Company Name",
        :type_of_company => "Type Of Company",
        :first_name => "First Name",
        :last_name => "Last Name",
        :address => "Address",
        :postal_code => "Postal Code",
        :city => "City",
        :country => "Country",
        :telephone_number => "Telephone Number",
        :email => "Email",
        :password => "Password"
      ),
      stub_model(Seller,
        :company_name => "Company Name",
        :type_of_company => "Type Of Company",
        :first_name => "First Name",
        :last_name => "Last Name",
        :address => "Address",
        :postal_code => "Postal Code",
        :city => "City",
        :country => "Country",
        :telephone_number => "Telephone Number",
        :email => "Email",
        :password => "Password"
      )
    ])
  end

  it "renders a list of sellers" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Company Name".to_s, :count => 2
    assert_select "tr>td", :text => "Type Of Company".to_s, :count => 2
    assert_select "tr>td", :text => "First Name".to_s, :count => 2
    assert_select "tr>td", :text => "Last Name".to_s, :count => 2
    assert_select "tr>td", :text => "Address".to_s, :count => 2
    assert_select "tr>td", :text => "Postal Code".to_s, :count => 2
    assert_select "tr>td", :text => "City".to_s, :count => 2
    assert_select "tr>td", :text => "Country".to_s, :count => 2
    assert_select "tr>td", :text => "Telephone Number".to_s, :count => 2
    assert_select "tr>td", :text => "Email".to_s, :count => 2
    assert_select "tr>td", :text => "Password".to_s, :count => 2
  end
end
