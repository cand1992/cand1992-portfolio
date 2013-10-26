require 'test_helper'

class UserMailerTest <ActionMailer::TestCase
  before do
    @user = build(:user)
    @email = UserMailer.welcome(@user).deliver
  end


  test "user mailer is being delivered to the right person" do
    assert_equal @email.to.pop, @user.email
  end

  test "email is delivered from senders email" do
    assert_equal @email.from.pop, "noreply@gmail.com"
  end

end