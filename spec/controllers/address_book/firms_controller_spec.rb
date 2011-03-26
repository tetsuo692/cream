require 'spec_helper'

describe AddressBook::FirmsController do

  def mock_firm(stubs={})
    (@mock_firm ||= mock_model(AddressBook::Firm).as_null_object).tap do |firm|
      firm.stub(stubs) unless stubs.empty?
    end
  end

  describe "GET index" do
    it "assigns all address_book_firms as @address_book_firms" do
      AddressBook::Firm.stub(:all) { [mock_firm] }
      get :index
      assigns(:address_book_firms).should eq([mock_firm])
    end
  end

  describe "GET show" do
    it "assigns the requested firm as @firm" do
      AddressBook::Firm.stub(:find).with("37") { mock_firm }
      get :show, :id => "37"
      assigns(:firm).should be(mock_firm)
    end
  end

  describe "GET new" do
    it "assigns a new firm as @firm" do
      AddressBook::Firm.stub(:new) { mock_firm }
      get :new
      assigns(:firm).should be(mock_firm)
    end
  end

  describe "GET edit" do
    it "assigns the requested firm as @firm" do
      AddressBook::Firm.stub(:find).with("37") { mock_firm }
      get :edit, :id => "37"
      assigns(:firm).should be(mock_firm)
    end
  end

  describe "POST create" do

    describe "with valid params" do
      it "assigns a newly created firm as @firm" do
        AddressBook::Firm.stub(:new).with({'these' => 'params'}) { mock_firm(:save => true) }
        post :create, :firm => {'these' => 'params'}
        assigns(:firm).should be(mock_firm)
      end

      it "redirects to the created firm" do
        AddressBook::Firm.stub(:new) { mock_firm(:save => true) }
        post :create, :firm => {}
        response.should redirect_to(address_book_firms_url(mock_firm))
      end
    end

    describe "with invalid params" do
      it "assigns a newly created but unsaved firm as @firm" do
        AddressBook::Firm.stub(:new).with({'these' => 'params'}) { mock_firm(:save => false) }
        post :create, :firm => {'these' => 'params'}
        assigns(:firm).should be(mock_firm)
      end

      it "re-renders the 'new' template" do
        AddressBook::Firm.stub(:new) { mock_firm(:save => false) }
        post :create, :firm => {}
        response.should render_template("new")
      end
    end

  end

  describe "PUT update" do

    describe "with valid params" do
      it "updates the requested firm" do
        AddressBook::Firm.should_receive(:find).with("37") { mock_firm }
        mock_address_book_firms.should_receive(:update_attributes).with({'these' => 'params'})
        put :update, :id => "37", :firm => {'these' => 'params'}
      end

      it "assigns the requested firm as @firm" do
        AddressBook::Firm.stub(:find) { mock_firm(:update_attributes => true) }
        put :update, :id => "1"
        assigns(:firm).should be(mock_firm)
      end

      it "redirects to the firm" do
        AddressBook::Firm.stub(:find) { mock_firm(:update_attributes => true) }
        put :update, :id => "1"
        response.should redirect_to(address_book_firms_url(mock_firm))
      end
    end

    describe "with invalid params" do
      it "assigns the firm as @firm" do
        AddressBook::Firm.stub(:find) { mock_firm(:update_attributes => false) }
        put :update, :id => "1"
        assigns(:firm).should be(mock_firm)
      end

      it "re-renders the 'edit' template" do
        AddressBook::Firm.stub(:find) { mock_firm(:update_attributes => false) }
        put :update, :id => "1"
        response.should render_template("edit")
      end
    end

  end

  describe "DELETE destroy" do
    it "destroys the requested firm" do
      AddressBook::Firm.should_receive(:find).with("37") { mock_firm }
      mock_address_book_firms.should_receive(:destroy)
      delete :destroy, :id => "37"
    end

    it "redirects to the address_book_firms list" do
      AddressBook::Firm.stub(:find) { mock_firm }
      delete :destroy, :id => "1"
      response.should redirect_to(address_book_firms_url)
    end
  end

end
