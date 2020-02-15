class User < ApplicationRecord
  CONTAYNOR_EMAIL = 'contaynor.com'
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  belongs_to :organization, optional: true
  has_many :orders

  # after_create :send_welcome_mail
  before_validation :set_password

  def name
    first_name + " " + last_name
  end

  def admin?
    organization_admin
  end

  def contaynor_employee?
    email.end_with? CONTAYNOR_EMAIL
  end

  def orgainzation_members
    User.joins(:organization).where(organizations: { id: organization.id })
  end

  def set_password
    @generated_password = Devise.friendly_token.first(8)
    self.password ||= @generated_password
  end

  def send_welcome_mail
    RegistrationMailer.welcome_email(self, @generated_password).deliver
  end
end
