class Address < ApplicationRecord
  belongs_to :organization, optional: true
end
