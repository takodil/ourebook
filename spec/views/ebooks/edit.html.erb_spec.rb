require 'spec_helper'

describe "ebooks/edit" do
  before(:each) do
    @ebook = assign(:ebook, stub_model(Ebook,
      :title => "MyString",
      :author => "MyString",
      :price => 1
    ))
  end

  it "renders the edit ebook form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => ebooks_path(@ebook), :method => "post" do
      assert_select "input#ebook_title", :name => "ebook[title]"
      assert_select "input#ebook_author", :name => "ebook[author]"
      assert_select "input#ebook_price", :name => "ebook[price]"
    end
  end
end
