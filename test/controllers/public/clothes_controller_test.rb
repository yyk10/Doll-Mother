require "test_helper"

class Public::ClothesControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get public_clothes_index_url
    assert_response :success
  end

  test "should get show" do
    get public_clothes_show_url
    assert_response :success
  end

  test "should get new" do
    get public_clothes_new_url
    assert_response :success
  end

  test "should get exit" do
    get public_clothes_exit_url
    assert_response :success
  end

  test "should get destroy" do
    get public_clothes_destroy_url
    assert_response :success
  end
end
