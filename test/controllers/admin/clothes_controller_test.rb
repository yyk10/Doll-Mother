require "test_helper"

class Admin::ClothesControllerTest < ActionDispatch::IntegrationTest
  test "should get show" do
    get admin_clothes_show_url
    assert_response :success
  end

  test "should get index" do
    get admin_clothes_index_url
    assert_response :success
  end
end
