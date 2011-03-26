class AddressBook::Firm < AddressBook::AddressBookItem
  alias_attribute :corporate_name, :name
  index [[ :name, Mongo::ASCENDING ]]
  
  validates_presence_of :corporate_name
end
