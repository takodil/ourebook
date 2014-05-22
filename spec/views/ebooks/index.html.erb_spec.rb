require 'spec_helper'

describe "ebooks/index" do
  before(:each) do
    assign(:ebooks, [
      stub_model(Ebook,
        :title => "Title",
        :author => "Author",
        :price => 1
      ),
      stub_model(Ebook,
        :title => "Title",
        :author => "Author",
        :price => 1
      )
    ])
  end

  it "renders a list of ebooks" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Title".to_s, :count => 2
    assert_select "tr>td", :text => "Author".to_s, :count => 2
    assert_select "tr>td", :text => 1.to_s, :count => 2
  end
end
