require 'spec_helper'

describe "address_book_firms/edit.html.haml" do
  before(:each) do
    @firm = assign(:firm, stub_model(AddressBook::Firm))
  end

  it "renders the edit firm form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => firm_path(@firm), :method => "post" do
    end
  end
end
