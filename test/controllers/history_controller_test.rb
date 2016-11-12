require 'test_helper'

class HistoryControllerTest < ActionDispatch::IntegrationTest
  test "should get list_all" do
    get history_list_all_url
    assert_response :success
  end

end
