class Order < ApplicationRecord
  belongs_to :user
  belongs_to :pickup_address, class_name: "Address"
  belongs_to :delivery_address, class_name: "Address"
  belongs_to :organization
end
