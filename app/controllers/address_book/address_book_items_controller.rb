class AddressBook::AddressBookItemsController < InheritedResources::Base
  defaults :resource_class => AddressBook::AddressBookItem, :collection_name => 'address_book_items', :instance_name => 'address_book_item'
  
  def show
    # @address_book_item = AddressBook::AddressBookItem.find(params[:id])
    super do |wants|
      wants.html do
        if @address_book_item.is_a?(AddressBook::Contact)
          redirect_to(address_book_contact_path(@address_book_item))
        else
          redirect_to(address_book_firm_path(@address_book_item))
        end
        
      end
    end
  end
end
