class UserMailer < Devise::Mailer
  default from: 'administrateur@musical-knowledge.com'/

  
  def welcome_email(user)
    @user = user
    @url  = ['http://example.com/login']
    mail(to: @user.email, subject: ['Bienvenue sur musical-knowledge'])
  end

  def reset_password_instructions(record, token, opts={})
    @token = token
  super
  end

end
