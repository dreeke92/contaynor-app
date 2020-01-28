require 'test_helper'

class Admin::UserManagementControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get admin_user_management_index_url
    assert_response :success
  end

end
