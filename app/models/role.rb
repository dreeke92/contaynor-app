class Role < ApplicationRecord
  has_many :users

  scope :is_admin, -> { where(name: 'admin') }
  scope :non_admin, -> { where(name: 'non-admin') }
end
