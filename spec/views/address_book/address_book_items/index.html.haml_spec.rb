require 'spec_helper'

describe "address_book_address_book_items/index.html.haml" do
  before(:each) do
    assign(:address_book_address_book_items, [
      stub_model(AddressBook::AddressBookItem,
        :name => "Name"
      ),
      stub_model(AddressBook::AddressBookItem,
        :name => "Name"
      )
    ])
  end

  it "renders a list of address_book_address_book_items" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Name".to_s, :count => 2
  end
end
