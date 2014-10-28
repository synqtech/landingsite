require 'test_helper'

class HomeControllerTest < ActionController::TestCase
  test "should get product" do
    get :product
    assert_response :success
  end

  test "should get about" do
    get :about
    assert_response :success
  end

  test "should get contact" do
    get :contact
    assert_response :success
  end

end
