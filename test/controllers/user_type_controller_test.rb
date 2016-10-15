require 'test_helper'

class UserTypeControllerTest < ActionDispatch::IntegrationTest
  test "should get create_user_type" do
    get user_type_create_user_type_url
    assert_response :success
  end

  test "should get update_user_type" do
    get user_type_update_user_type_url
    assert_response :success
  end

  test "should get delete_user_type" do
    get user_type_delete_user_type_url
    assert_response :success
  end

  test "should get list_all" do
    get user_type_list_all_url
    assert_response :success
  end

end
