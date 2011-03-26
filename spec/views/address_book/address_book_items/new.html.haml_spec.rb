require 'spec_helper'

describe "address_book_address_book_items/new.html.haml" do
  before(:each) do
    assign(:address_book_item, stub_model(AddressBook::AddressBookItem,
      :name => "MyString"
    ).as_new_record)
  end

  it "renders new address_book_item form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => address_book_address_book_items_path, :method => "post" do
      assert_select "input#address_book_item_name", :name => "address_book_item[name]"
    end
  end
end
