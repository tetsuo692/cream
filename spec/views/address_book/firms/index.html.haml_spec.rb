require 'spec_helper'

describe "address_book_firms/index.html.haml" do
  before(:each) do
    assign(:address_book_firms, [
      stub_model(AddressBook::Firm),
      stub_model(AddressBook::Firm)
    ])
  end

  it "renders a list of address_book_firms" do
    render
  end
end
