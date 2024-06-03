require "test_helper"

class YellControllerTest < ActionDispatch::IntegrationTest
  test "should get top" do
    get yell_top_url
    assert_response :success
  end

  test "should get show" do
    get yell_show_url
    assert_response :success
  end

  test "should get new" do
    get yell_new_url
    assert_response :success
  end

  test "should get success" do
    get yell_success_url
    assert_response :success
  end
end
