class User < ApplicationRecord
  CONTAYNOR_EMAIL = 'contaynor.com'
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  belongs_to :organization, optional: true
  has_many :orders
  has_one_attached :photo

  # after_create :send_welcome_mail
  before_validation :set_password, if: :new_record?

  # required so we can use have the org_id field in the form to add new users
  attr_accessor :org_id

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
    @user_password = self.password || Devise.friendly_token.first(8)
    self.password ||= @user_password
  end

  def send_welcome_mail
    RegistrationMailer.welcome_email(self, @user_password).deliver
  end
end
