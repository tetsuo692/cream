require "spec_helper"

describe AddressBook::FirmsController do
  describe "routing" do

    it "recognizes and generates #index" do
      { :get => "/address_book_firms" }.should route_to(:controller => "address_book_firms", :action => "index")
    end

    it "recognizes and generates #new" do
      { :get => "/address_book_firms/new" }.should route_to(:controller => "address_book_firms", :action => "new")
    end

    it "recognizes and generates #show" do
      { :get => "/address_book_firms/1" }.should route_to(:controller => "address_book_firms", :action => "show", :id => "1")
    end

    it "recognizes and generates #edit" do
      { :get => "/address_book_firms/1/edit" }.should route_to(:controller => "address_book_firms", :action => "edit", :id => "1")
    end

    it "recognizes and generates #create" do
      { :post => "/address_book_firms" }.should route_to(:controller => "address_book_firms", :action => "create")
    end

    it "recognizes and generates #update" do
      { :put => "/address_book_firms/1" }.should route_to(:controller => "address_book_firms", :action => "update", :id => "1")
    end

    it "recognizes and generates #destroy" do
      { :delete => "/address_book_firms/1" }.should route_to(:controller => "address_book_firms", :action => "destroy", :id => "1")
    end

  end
end
