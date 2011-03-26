require 'spec_helper'

describe "address_book_firms/new.html.haml" do
  before(:each) do
    assign(:firm, stub_model(AddressBook::Firm).as_new_record)
  end

  it "renders new firm form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => address_book_firms_path, :method => "post" do
    end
  end
end
