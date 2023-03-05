require "test_helper"

class Emt::WorkshopsControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get emt_workshops_index_url
    assert_response :success
  end
end
