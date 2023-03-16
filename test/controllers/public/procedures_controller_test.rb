require "test_helper"

class Public::ProceduresControllerTest < ActionDispatch::IntegrationTest
  test "should get post" do
    get public_procedures_post_url
    assert_response :success
  end

  test "should get create" do
    get public_procedures_create_url
    assert_response :success
  end

  test "should get edit" do
    get public_procedures_edit_url
    assert_response :success
  end
end
