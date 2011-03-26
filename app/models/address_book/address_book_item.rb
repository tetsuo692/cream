class AddressBook::AddressBookItem
  include Mongoid::Document
  include Mongoid::Timestamps
  include Mongoid::Versioning
  
  field :name, :type => String
end
