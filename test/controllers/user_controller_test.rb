require 'test_helper'

class UserControllerTest < ActionDispatch::IntegrationTest
  test "should get list_all" do
    get user_list_all_url
    assert_response :success
  end

  test "should get create_user" do
    get user_create_user_url
    assert_response :success
  end

  test "should get update_user" do
    get user_update_user_url
    assert_response :success
  end

  test "should get delete_user" do
    get user_delete_user_url
    assert_response :success
  end

  test "should get block_user" do
    get user_block_user_url
    assert_response :success
  end

end
