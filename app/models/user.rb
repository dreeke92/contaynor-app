class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  belongs_to :organization, optional: true
  has_many :orders
  belongs_to :role
  before_validation :set_default_role

  scope :admins, -> { joins(:role).merge(Role.is_admin) }
  scope :non_admins, -> { joins(:role).merge(Role.non_admin) }

  def name
    first_name + " " + last_name
  end

  def is_admin?
    role.name == 'admin'
  end

  private

  def set_default_role
    self.role ||= Role.find_by_name('non-admin')
  end
end
