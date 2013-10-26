require 'test_helper'

class ContactMailerTest <ActionMailer::TestCase
  before do
    @message = build(:message)
    @email = ContactMailer.contact_us(@message).deliver
  end


  test "contact us mailer is being delivered to the right person" do
    assert_equal @email.to.pop, "chrisportfolio@gmail.com"
  end

  test "email is delivered from senders email" do
    assert_equal @email.from.pop, @message.email
  end

end