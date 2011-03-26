require 'spec_helper'

describe "address_book_address_book_items/edit.html.haml" do
  before(:each) do
    @address_book_item = assign(:address_book_item, stub_model(AddressBook::AddressBookItem,
      :name => "MyString"
    ))
  end

  it "renders the edit address_book_item form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => address_book_item_path(@address_book_item), :method => "post" do
      assert_select "input#address_book_item_name", :name => "address_book_item[name]"
    end
  end
end
