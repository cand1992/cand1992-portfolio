require 'test_helper'

class MessageTest < ActiveSupport::TestCase
  
  before do
    @message = build(:message)
  end


  def test_valid
    assert @message.valid?
  end
  
  test "message has email" do
    @message.email = nil
    assert @message.invalid?
  end

  test "message has name" do
    @message.name = nil
    assert @message.invalid?
  end

  test "message has subject" do
    @message.subject = nil
    assert @message.invalid?
  end

  test "message has body" do
    @message.body = nil
    assert @message.invalid?
  end

  test "email is a valid email" do
    @message.email = "example@sdfgsfd.dfg"
    assert_match Devise::email_regexp, @message.email
  end


end