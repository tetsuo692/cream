require "spec_helper"

describe AddressBook::AddressBookItemsController do
  describe "routing" do

    it "recognizes and generates #index" do
      { :get => "/address_book_address_book_items" }.should route_to(:controller => "address_book_address_book_items", :action => "index")
    end

    it "recognizes and generates #new" do
      { :get => "/address_book_address_book_items/new" }.should route_to(:controller => "address_book_address_book_items", :action => "new")
    end

    it "recognizes and generates #show" do
      { :get => "/address_book_address_book_items/1" }.should route_to(:controller => "address_book_address_book_items", :action => "show", :id => "1")
    end

    it "recognizes and generates #edit" do
      { :get => "/address_book_address_book_items/1/edit" }.should route_to(:controller => "address_book_address_book_items", :action => "edit", :id => "1")
    end

    it "recognizes and generates #create" do
      { :post => "/address_book_address_book_items" }.should route_to(:controller => "address_book_address_book_items", :action => "create")
    end

    it "recognizes and generates #update" do
      { :put => "/address_book_address_book_items/1" }.should route_to(:controller => "address_book_address_book_items", :action => "update", :id => "1")
    end

    it "recognizes and generates #destroy" do
      { :delete => "/address_book_address_book_items/1" }.should route_to(:controller => "address_book_address_book_items", :action => "destroy", :id => "1")
    end

  end
end
