class AddressBook < ApplicationRecord
  belongs_to :organization
  belongs_to :address
end
