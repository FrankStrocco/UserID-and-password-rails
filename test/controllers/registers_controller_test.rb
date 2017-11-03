require 'test_helper'

class RegistersControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get registers_index_url
    assert_response :success
  end

  test "should get register" do
    get registers_register_url
    assert_response :success
  end

end
