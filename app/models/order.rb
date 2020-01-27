class Order < ApplicationRecord
  enum status: { requesting: 0, pending: 1, accepted: 2, performed: 3 }

  belongs_to :user
  belongs_to :pickup_address, class_name: "Address"
  belongs_to :delivery_address, class_name: "Address"
  belongs_to :organization
  has_many :transport_loads

  validates :pickup_date, :pickup_time, presence: true
end
