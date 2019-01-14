require 'test_helper'

class WelcomeControllerTest < ActionDispatch::IntegrationTest
  
  test "username-email should be present" do
    user = User.new
    assert_not user.save
  end


  test "should get index" do
    get welcome_index_url
    assert_response :success
  end

  test "should get signin" do
    get welcome_signin_url
    assert_response :success
  end

  test "should get signup" do
    get welcome_signup_url
    assert_response :success
  end

end
