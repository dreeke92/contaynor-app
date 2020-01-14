class Address < ApplicationRecord
  belongs_to :organization, optional: true
  has_many :address_books
  has_many :organizations, :through => :address_books
end
