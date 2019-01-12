require 'test_helper'

class UserControllerTest < ActionDispatch::IntegrationTest
  test "should get lookProfile" do
    get user_lookProfile_url
    assert_response :success
  end

  test "should get lookHistory" do
    get user_lookHistory_url
    assert_response :success
  end

  test "should get searchArtist" do
    get user_searchArtist_url
    assert_response :success
  end

  test "should get logout" do
    get user_logout_url
    assert_response :success
  end

  test "should get deleteHistory" do
    get user_deleteHistory_url
    assert_response :success
  end

end
