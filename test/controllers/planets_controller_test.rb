require "test_helper"

class PlanetsControllerTest < ActionDispatch::IntegrationTest
  test "should get show" do
    get planets_show_url
    assert_response :success
  end
end
