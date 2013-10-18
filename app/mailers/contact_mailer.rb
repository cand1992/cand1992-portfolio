class ContactMailer < ActionMailer::Base
  default to: "chrisportfolio@gmail.com"
  default from: "chrisportfolio@gmail.com"
  layout 'email'
  def contact_us(message)
    @message = message
    mail(reply_to: @message.email, subject: "[Chris Portfolio] #{@message.subject}")
  end


end
