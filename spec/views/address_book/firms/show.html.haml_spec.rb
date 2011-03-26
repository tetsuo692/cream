require 'spec_helper'

describe "address_book_firms/show.html.haml" do
  before(:each) do
    @firm = assign(:firm, stub_model(AddressBook::Firm))
  end

  it "renders attributes in <p>" do
    render
  end
end
