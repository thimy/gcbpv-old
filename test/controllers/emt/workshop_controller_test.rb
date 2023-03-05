require "test_helper"

class Emt::WorkshopControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get emt_workshop_index_url
    assert_response :success
  end
end
