require "test_helper"

class Admin::ProceduresControllerTest < ActionDispatch::IntegrationTest
  test "should get edit" do
    get admin_procedures_edit_url
    assert_response :success
  end

  test "should get create" do
    get admin_procedures_create_url
    assert_response :success
  end

  test "should get update" do
    get admin_procedures_update_url
    assert_response :success
  end
end
