class RegistrationMailer < ApplicationMailer
  def welcome_email(user, password)
    @user = user
    @password = password

    mail(to: @user.email, subject: 'Welcome to Contaynor')
  end
end
