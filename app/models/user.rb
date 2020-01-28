class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  belongs_to :organization, optional: true
  has_many :orders

  def name
    first_name + " " + last_name
  end

  def is_admin?
    # role.name == 'admin'
    false
  end
end
