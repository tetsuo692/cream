require 'spec_helper'

describe "address_book_contacts/show.html.haml" do
  before(:each) do
    @contact = assign(:contact, stub_model(AddressBook::Contact))
  end

  it "renders attributes in <p>" do
    render
  end
end
