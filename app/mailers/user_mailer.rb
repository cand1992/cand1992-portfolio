class UserMailer < ActionMailer::Base
  default from: "noreply@gmail.com"

  def welcome(user)
    @user = user
    mail(to: @user.email, subject: "Welcome to Chris's portfolio!")
  end

end
