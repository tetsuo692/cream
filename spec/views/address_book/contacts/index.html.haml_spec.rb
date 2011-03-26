require 'spec_helper'

describe "address_book_contacts/index.html.haml" do
  before(:each) do
    assign(:address_book_contacts, [
      stub_model(AddressBook::Contact),
      stub_model(AddressBook::Contact)
    ])
  end

  it "renders a list of address_book_contacts" do
    render
  end
end
