require "test_helper"

class StaticPagesControllerTest < ActionController::TestCase
  test "should get home" do
    get :home
    assert_response :success
    assert_template :home
  end

  test "should get about_me" do
    get :about_me
    assert_response :success
    assert_template :about_me
  end



end
