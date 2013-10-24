require 'test_helper'

class UserTest < ActiveSupport::TestCase
  before do
    @user = build(:user)
  end

  test "user has first name" do
    @user.first_name = nil
    assert @user.invalid?
  end

  test "user has last name" do
    @user.last_name = nil
    assert @user.invalid?
  end

  test "user has email" do
    @user.email = nil
    assert @user.invalid?
  end

  test "user has password" do
    @user.password = nil
    assert @user.invalid?
  end

end