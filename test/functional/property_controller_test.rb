require 'test_helper'

class PropertyControllerTest < ActionController::TestCase
  test "should get new_flat" do
    get :new_flat
    assert_response :success
  end

  test "should get new_building" do
    get :new_building
    assert_response :success
  end

  test "should get show_flat" do
    get :show_flat
    assert_response :success
  end

end
