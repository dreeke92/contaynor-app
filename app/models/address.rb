class Address < ApplicationRecord
  belongs_to :organization, optional: true
  has_many :address_books
  has_many :organizations, through: :address_books

  validates :city, :country, :street_name, :street_number, :postal_code, presence: true

  # for adding adressbook field to new address form
  attr_accessor :address_relation
  attr_accessor :head_quarters

  def complete
    return street_name + " " + street_number.to_s + ", " + postal_code.to_s + " " + city + ", " + country
  end
end
