require 'spec_helper'

describe "address_book_contacts/edit.html.haml" do
  before(:each) do
    @contact = assign(:contact, stub_model(AddressBook::Contact))
  end

  it "renders the edit contact form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => contact_path(@contact), :method => "post" do
    end
  end
end
