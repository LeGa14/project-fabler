require 'test_helper'

class Api::PropsControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get api_props_index_url
    assert_response :success
  end

  test "should get show" do
    get api_props_show_url
    assert_response :success
  end

end
