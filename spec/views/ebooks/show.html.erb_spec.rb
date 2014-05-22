require 'spec_helper'

describe "ebooks/show" do
  before(:each) do
    @ebook = assign(:ebook, stub_model(Ebook,
      :title => "Title",
      :author => "Author",
      :price => 1
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Title/)
    rendered.should match(/Author/)
    rendered.should match(/1/)
  end
end
