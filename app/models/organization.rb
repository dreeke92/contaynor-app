class Organization < ApplicationRecord
  validates :name, presence: true, uniqueness: true
  has_many :users
  has_many :orders, :through => :users
  has_many :address_books
  has_many :addresses, :through => :address_books
  has_many :orders
end
