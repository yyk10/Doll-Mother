require "test_helper"

class Admin::MaterialsControllerTest < ActionDispatch::IntegrationTest
  test "should get edit" do
    get admin_materials_edit_url
    assert_response :success
  end

  test "should get create" do
    get admin_materials_create_url
    assert_response :success
  end

  test "should get update" do
    get admin_materials_update_url
    assert_response :success
  end
end
