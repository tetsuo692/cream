require 'spec_helper'

describe "address_book_contacts/new.html.haml" do
  before(:each) do
    assign(:contact, stub_model(AddressBook::Contact).as_new_record)
  end

  it "renders new contact form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => address_book_contacts_path, :method => "post" do
    end
  end
end
