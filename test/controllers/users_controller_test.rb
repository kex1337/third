require 'test_helper'

class UsersControllerTest < ActionDispatch::IntegrationTest
  test "should get action:new" do
    get users_action:new_url
    assert_response :success
  end

end
