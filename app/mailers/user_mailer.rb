class UserMailer < Devise::Mailer
  default from: 'administrateur@culture-test.com'

  
  def welcome_email(user)
    @user = user
    @url  = ['http://example.com/login']
    mail(to: @user.email, subject: ['Bienvenue sur culture-test'])
  end

  def reset_password_instructions(record, token, opts={})
    @token = token
  super
  end

end
