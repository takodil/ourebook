require 'spec_helper'

describe "sellers/edit" do
  before(:each) do
    @seller = assign(:seller, stub_model(Seller,
      :company_name => "MyString",
      :type_of_company => "MyString",
      :first_name => "MyString",
      :last_name => "MyString",
      :address => "MyString",
      :postal_code => "MyString",
      :city => "MyString",
      :country => "MyString",
      :telephone_number => "MyString",
      :email => "MyString",
      :password => "MyString"
    ))
  end

  it "renders the edit seller form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => sellers_path(@seller), :method => "post" do
      assert_select "input#seller_company_name", :name => "seller[company_name]"
      assert_select "input#seller_type_of_company", :name => "seller[type_of_company]"
      assert_select "input#seller_first_name", :name => "seller[first_name]"
      assert_select "input#seller_last_name", :name => "seller[last_name]"
      assert_select "input#seller_address", :name => "seller[address]"
      assert_select "input#seller_postal_code", :name => "seller[postal_code]"
      assert_select "input#seller_city", :name => "seller[city]"
      assert_select "input#seller_country", :name => "seller[country]"
      assert_select "input#seller_telephone_number", :name => "seller[telephone_number]"
      assert_select "input#seller_email", :name => "seller[email]"
      assert_select "input#seller_password", :name => "seller[password]"
    end
  end
end
