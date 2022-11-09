require "test_helper"

class AliensControllerTest < ActionDispatch::IntegrationTest
  test "should get new" do
    get aliens_new_url
    assert_response :success
  end
end
