require "test_helper"

class RandomWordsControllerTest < ActionDispatch::IntegrationTest
  def setup
    sign_in users(:abdullah)
  end

  test "get show" do
    get root_url
    assert_response :success
  end
end
