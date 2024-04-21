class UserMailer < Devise::Mailer
  default from: 'administrateur@culture-sound.com'

  
  def welcome_email(user)
    @user = user
    @url  = ['http://example.com/login']
    mail(to: @user.email, subject: ['Bienvenue sur culture-sound'])
  end

  def reset_password_instructions(record, token, opts={})
    @token = token
  super
  end

end
