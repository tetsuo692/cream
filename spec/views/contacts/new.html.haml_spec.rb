require 'spec_helper'

describe "contacts/new.html.haml" do
  before(:each) do
    assign(:contact, stub_model(Contact,
      :first_name => "MyString",
      :last_name => "MyString"
    ).as_new_record)
  end

  it "renders new contact form" do
    render

    # Run the generator again with the --webrat-matchers flag if you want to use webrat matchers
    assert_select "form", :action => contacts_path, :method => "post" do
      assert_select "input#contact_civility", :name => "contact[civility]"
      assert_select "input#contact_first_name", :name => "contact[first_name]"
      assert_select "input#contact_last_name", :name => "contact[last_name]"
    end
  end
end
