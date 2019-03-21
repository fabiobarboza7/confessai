class UserMailer < ApplicationMailer

  # Subject can be set in your I18n file at config/locales/en.yml
  # with the following lookup:
  #
  #   en.user_mailer.user_answer.subject
  #
  def user_answer(user)
  	# @user = user  # Instance variable => available in view
   #  mail(to: @user.email, subject: 'Welcome to Le Wagon')
   #  # This will render a view in `app/views/user_mailer`!
   @user = user

    mail(
      to:       @user.email,
      subject:  "Oi #{user.first_name}, leia este email"
    )
  end
end