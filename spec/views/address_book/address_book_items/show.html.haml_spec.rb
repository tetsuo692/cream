require 'spec_helper'

describe "address_book_address_book_items/show.html.haml" do
  before(:each) do
    @address_book_item = assign(:address_book_item, stub_model(AddressBook::AddressBookItem,
      :name => "Name"
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Name/)
  end
end
