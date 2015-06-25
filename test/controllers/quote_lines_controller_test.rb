require 'test_helper'

class QuoteLinesControllerTest < ActionController::TestCase
  setup do
    @quote_line = quote_lines(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:quote_lines)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create quote_line" do
    assert_difference('QuoteLine.count') do
      post :create, quote_line: { discount: @quote_line.discount, qty: @quote_line.qty }
    end

    assert_redirected_to quote_line_path(assigns(:quote_line))
  end

  test "should show quote_line" do
    get :show, id: @quote_line
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @quote_line
    assert_response :success
  end

  test "should update quote_line" do
    patch :update, id: @quote_line, quote_line: { discount: @quote_line.discount, qty: @quote_line.qty }
    assert_redirected_to quote_line_path(assigns(:quote_line))
  end

  test "should destroy quote_line" do
    assert_difference('QuoteLine.count', -1) do
      delete :destroy, id: @quote_line
    end

    assert_redirected_to quote_lines_path
  end
end
