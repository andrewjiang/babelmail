class UserMailer < ActionMailer::Base
  default from: "andrew@babel-mail.com"

  def welcome_email(user)
  	@user = user
  	@url = "http://www.babel-mail.com/users/sign_up"
  	mail(to: @user.email, subject: "Welcome to Babel Mail!")
  end
end
