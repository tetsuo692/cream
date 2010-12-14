class Contact
  include Mongoid::Document
  include Mongoid::Timestamps
  include Mongoid::Versioning
  
  field :first_name, :type => String
  field :last_name,  :type => String
  field :civility,   :type => String
  validates_presence_of :last_name
end
