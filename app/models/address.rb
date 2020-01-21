class Address < ApplicationRecord
  belongs_to :organization, optional: true
  has_many :address_books
  has_many :organizations, :through => :address_books

  def complete
    return self.street_name + " " + self.street_number.to_s + ", " + self.postal_code.to_s + " " + self.city + ", " + self.country
  end
end
