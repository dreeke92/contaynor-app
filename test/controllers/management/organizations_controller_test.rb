require 'test_helper'

class Management::OrganizationsControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get management_organizations_index_url
    assert_response :success
  end

end
