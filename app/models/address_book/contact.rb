class AddressBook::Contact < AddressBook::AddressBookItem
  field :first_name,  :type => String
  alias_attribute :last_name, :name
  field :civility,       :type => String
  
  index [[ :name, Mongo::ASCENDING ], [ :last_name, Mongo::ASCENDING ]]
  
  validates_presence_of :first_name
  validates_presence_of :last_name
end
