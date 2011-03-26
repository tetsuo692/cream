require 'spec_helper'

describe AddressBook::AddressBookItemsController do

  def mock_address_book_item(stubs={})
    (@mock_address_book_item ||= mock_model(AddressBook::AddressBookItem).as_null_object).tap do |address_book_item|
      address_book_item.stub(stubs) unless stubs.empty?
    end
  end

  describe "GET index" do
    it "assigns all address_book_address_book_items as @address_book_address_book_items" do
      AddressBook::AddressBookItem.stub(:all) { [mock_address_book_item] }
      get :index
      assigns(:address_book_address_book_items).should eq([mock_address_book_item])
    end
  end

  describe "GET show" do
    it "assigns the requested address_book_item as @address_book_item" do
      AddressBook::AddressBookItem.stub(:find).with("37") { mock_address_book_item }
      get :show, :id => "37"
      assigns(:address_book_item).should be(mock_address_book_item)
    end
  end

  describe "GET new" do
    it "assigns a new address_book_item as @address_book_item" do
      AddressBook::AddressBookItem.stub(:new) { mock_address_book_item }
      get :new
      assigns(:address_book_item).should be(mock_address_book_item)
    end
  end

  describe "GET edit" do
    it "assigns the requested address_book_item as @address_book_item" do
      AddressBook::AddressBookItem.stub(:find).with("37") { mock_address_book_item }
      get :edit, :id => "37"
      assigns(:address_book_item).should be(mock_address_book_item)
    end
  end

  describe "POST create" do

    describe "with valid params" do
      it "assigns a newly created address_book_item as @address_book_item" do
        AddressBook::AddressBookItem.stub(:new).with({'these' => 'params'}) { mock_address_book_item(:save => true) }
        post :create, :address_book_item => {'these' => 'params'}
        assigns(:address_book_item).should be(mock_address_book_item)
      end

      it "redirects to the created address_book_item" do
        AddressBook::AddressBookItem.stub(:new) { mock_address_book_item(:save => true) }
        post :create, :address_book_item => {}
        response.should redirect_to(address_book_address_book_items_url(mock_address_book_item))
      end
    end

    describe "with invalid params" do
      it "assigns a newly created but unsaved address_book_item as @address_book_item" do
        AddressBook::AddressBookItem.stub(:new).with({'these' => 'params'}) { mock_address_book_item(:save => false) }
        post :create, :address_book_item => {'these' => 'params'}
        assigns(:address_book_item).should be(mock_address_book_item)
      end

      it "re-renders the 'new' template" do
        AddressBook::AddressBookItem.stub(:new) { mock_address_book_item(:save => false) }
        post :create, :address_book_item => {}
        response.should render_template("new")
      end
    end

  end

  describe "PUT update" do

    describe "with valid params" do
      it "updates the requested address_book_item" do
        AddressBook::AddressBookItem.should_receive(:find).with("37") { mock_address_book_item }
        mock_address_book_address_book_items.should_receive(:update_attributes).with({'these' => 'params'})
        put :update, :id => "37", :address_book_item => {'these' => 'params'}
      end

      it "assigns the requested address_book_item as @address_book_item" do
        AddressBook::AddressBookItem.stub(:find) { mock_address_book_item(:update_attributes => true) }
        put :update, :id => "1"
        assigns(:address_book_item).should be(mock_address_book_item)
      end

      it "redirects to the address_book_item" do
        AddressBook::AddressBookItem.stub(:find) { mock_address_book_item(:update_attributes => true) }
        put :update, :id => "1"
        response.should redirect_to(address_book_address_book_items_url(mock_address_book_item))
      end
    end

    describe "with invalid params" do
      it "assigns the address_book_item as @address_book_item" do
        AddressBook::AddressBookItem.stub(:find) { mock_address_book_item(:update_attributes => false) }
        put :update, :id => "1"
        assigns(:address_book_item).should be(mock_address_book_item)
      end

      it "re-renders the 'edit' template" do
        AddressBook::AddressBookItem.stub(:find) { mock_address_book_item(:update_attributes => false) }
        put :update, :id => "1"
        response.should render_template("edit")
      end
    end

  end

  describe "DELETE destroy" do
    it "destroys the requested address_book_item" do
      AddressBook::AddressBookItem.should_receive(:find).with("37") { mock_address_book_item }
      mock_address_book_address_book_items.should_receive(:destroy)
      delete :destroy, :id => "37"
    end

    it "redirects to the address_book_address_book_items list" do
      AddressBook::AddressBookItem.stub(:find) { mock_address_book_item }
      delete :destroy, :id => "1"
      response.should redirect_to(address_book_address_book_items_url)
    end
  end

end
