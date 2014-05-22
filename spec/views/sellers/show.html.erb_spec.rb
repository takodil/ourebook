require 'spec_helper'

describe "sellers/show" do
  before(:each) do
    @seller = assign(:seller, stub_model(Seller,
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
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Company Name/)
    rendered.should match(/Type Of Company/)
    rendered.should match(/First Name/)
    rendered.should match(/Last Name/)
    rendered.should match(/Address/)
    rendered.should match(/Postal Code/)
    rendered.should match(/City/)
    rendered.should match(/Country/)
    rendered.should match(/Telephone Number/)
    rendered.should match(/Email/)
    rendered.should match(/Password/)
  end
end
