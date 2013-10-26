require "test_helper"

class ContactControllerTest < ActionController::TestCase
  test "should get the new web page" do
    get :new
    assert_response :success
    assert_template :new
  end

  test "sends a contact email and redirects to the homepage and displays a notice to the user" do
    message_attributes = attributes_for(:message)
    post :create, message: message_attributes
    assert_equal ActionMailer::Base.deliveries.last.reply_to.pop, message_attributes[:email]
    assert_response :redirect
    assert_redirected_to root_path
    assert flash[:notice].present?
  end

  test "does not send a message and renders the new template for invalid messages" do
    post :create, message: attributes_for(:message, email: nil)
    assert_response :success
    assert_template :new
  end
end