require "test_helper"

class AuthorControllerTest < ActionDispatch::IntegrationTest
  test "should get author" do
    get author_author_url
    assert_response :success
  end
end
