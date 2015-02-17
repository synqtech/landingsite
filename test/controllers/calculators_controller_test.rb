require 'test_helper'

class CalculatorsControllerTest < ActionController::TestCase
  test "should get roi" do
    get :roi
    assert_response :success
  end

end
