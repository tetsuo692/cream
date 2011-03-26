require "spec_helper"

describe AddressBook::ContactsController do
  describe "routing" do

    it "recognizes and generates #index" do
      { :get => "/address_book_contacts" }.should route_to(:controller => "address_book_contacts", :action => "index")
    end

    it "recognizes and generates #new" do
      { :get => "/address_book_contacts/new" }.should route_to(:controller => "address_book_contacts", :action => "new")
    end

    it "recognizes and generates #show" do
      { :get => "/address_book_contacts/1" }.should route_to(:controller => "address_book_contacts", :action => "show", :id => "1")
    end

    it "recognizes and generates #edit" do
      { :get => "/address_book_contacts/1/edit" }.should route_to(:controller => "address_book_contacts", :action => "edit", :id => "1")
    end

    it "recognizes and generates #create" do
      { :post => "/address_book_contacts" }.should route_to(:controller => "address_book_contacts", :action => "create")
    end

    it "recognizes and generates #update" do
      { :put => "/address_book_contacts/1" }.should route_to(:controller => "address_book_contacts", :action => "update", :id => "1")
    end

    it "recognizes and generates #destroy" do
      { :delete => "/address_book_contacts/1" }.should route_to(:controller => "address_book_contacts", :action => "destroy", :id => "1")
    end

  end
end
