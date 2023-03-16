require "test_helper"

class Public::MaterialsControllerTest < ActionDispatch::IntegrationTest
  test "should get post" do
    get public_materials_post_url
    assert_response :success
  end

  test "should get create" do
    get public_materials_create_url
    assert_response :success
  end

  test "should get edit" do
    get public_materials_edit_url
    assert_response :success
  end
end
