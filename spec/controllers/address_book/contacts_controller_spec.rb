require 'spec_helper'

describe AddressBook::ContactsController do

  def mock_contact(stubs={})
    (@mock_contact ||= mock_model(AddressBook::Contact).as_null_object).tap do |contact|
      contact.stub(stubs) unless stubs.empty?
    end
  end

  describe "GET index" do
    it "assigns all address_book_contacts as @address_book_contacts" do
      AddressBook::Contact.stub(:all) { [mock_contact] }
      get :index
      assigns(:address_book_contacts).should eq([mock_contact])
    end
  end

  describe "GET show" do
    it "assigns the requested contact as @contact" do
      AddressBook::Contact.stub(:find).with("37") { mock_contact }
      get :show, :id => "37"
      assigns(:contact).should be(mock_contact)
    end
  end

  describe "GET new" do
    it "assigns a new contact as @contact" do
      AddressBook::Contact.stub(:new) { mock_contact }
      get :new
      assigns(:contact).should be(mock_contact)
    end
  end

  describe "GET edit" do
    it "assigns the requested contact as @contact" do
      AddressBook::Contact.stub(:find).with("37") { mock_contact }
      get :edit, :id => "37"
      assigns(:contact).should be(mock_contact)
    end
  end

  describe "POST create" do

    describe "with valid params" do
      it "assigns a newly created contact as @contact" do
        AddressBook::Contact.stub(:new).with({'these' => 'params'}) { mock_contact(:save => true) }
        post :create, :contact => {'these' => 'params'}
        assigns(:contact).should be(mock_contact)
      end

      it "redirects to the created contact" do
        AddressBook::Contact.stub(:new) { mock_contact(:save => true) }
        post :create, :contact => {}
        response.should redirect_to(address_book_contacts_url(mock_contact))
      end
    end

    describe "with invalid params" do
      it "assigns a newly created but unsaved contact as @contact" do
        AddressBook::Contact.stub(:new).with({'these' => 'params'}) { mock_contact(:save => false) }
        post :create, :contact => {'these' => 'params'}
        assigns(:contact).should be(mock_contact)
      end

      it "re-renders the 'new' template" do
        AddressBook::Contact.stub(:new) { mock_contact(:save => false) }
        post :create, :contact => {}
        response.should render_template("new")
      end
    end

  end

  describe "PUT update" do

    describe "with valid params" do
      it "updates the requested contact" do
        AddressBook::Contact.should_receive(:find).with("37") { mock_contact }
        mock_address_book_contacts.should_receive(:update_attributes).with({'these' => 'params'})
        put :update, :id => "37", :contact => {'these' => 'params'}
      end

      it "assigns the requested contact as @contact" do
        AddressBook::Contact.stub(:find) { mock_contact(:update_attributes => true) }
        put :update, :id => "1"
        assigns(:contact).should be(mock_contact)
      end

      it "redirects to the contact" do
        AddressBook::Contact.stub(:find) { mock_contact(:update_attributes => true) }
        put :update, :id => "1"
        response.should redirect_to(address_book_contacts_url(mock_contact))
      end
    end

    describe "with invalid params" do
      it "assigns the contact as @contact" do
        AddressBook::Contact.stub(:find) { mock_contact(:update_attributes => false) }
        put :update, :id => "1"
        assigns(:contact).should be(mock_contact)
      end

      it "re-renders the 'edit' template" do
        AddressBook::Contact.stub(:find) { mock_contact(:update_attributes => false) }
        put :update, :id => "1"
        response.should render_template("edit")
      end
    end

  end

  describe "DELETE destroy" do
    it "destroys the requested contact" do
      AddressBook::Contact.should_receive(:find).with("37") { mock_contact }
      mock_address_book_contacts.should_receive(:destroy)
      delete :destroy, :id => "37"
    end

    it "redirects to the address_book_contacts list" do
      AddressBook::Contact.stub(:find) { mock_contact }
      delete :destroy, :id => "1"
      response.should redirect_to(address_book_contacts_url)
    end
  end

end
