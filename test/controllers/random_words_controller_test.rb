require "test_helper"

class RandomWordsControllerTest < ActionDispatch::IntegrationTest
  test "get show" do
    get root_url
    assert_response :success
  end
end
