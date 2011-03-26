class AddressBook::ContactsController < InheritedResources::Base
  defaults :resource_class => AddressBook::Contact, :collection_name => 'contacts', :instance_name => 'contact'
end
