require 'test_helper'

class RoiSurveysControllerTest < ActionController::TestCase
  setup do
    @roi_survey = roi_surveys(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:roi_surveys)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create roi_survey" do
    assert_difference('RoiSurvey.count') do
      post :create, roi_survey: { cctv: @roi_survey.cctv, eas_effective: @roi_survey.eas_effective, eas_tags_per_month: @roi_survey.eas_tags_per_month, existing_eas: @roi_survey.existing_eas, haba: @roi_survey.haba, meat_sales_percent: @roi_survey.meat_sales_percent, num_exits: @roi_survey.num_exits, num_exits_6_feet: @roi_survey.num_exits_6_feet, num_pos_terminals: @roi_survey.num_pos_terminals, store_sq_ft: @roi_survey.store_sq_ft, total_annual_sales: @roi_survey.total_annual_sales, walking_svc: @roi_survey.walking_svc }
    end

    assert_redirected_to roi_survey_path(assigns(:roi_survey))
  end

  test "should show roi_survey" do
    get :show, id: @roi_survey
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @roi_survey
    assert_response :success
  end

  test "should update roi_survey" do
    patch :update, id: @roi_survey, roi_survey: { cctv: @roi_survey.cctv, eas_effective: @roi_survey.eas_effective, eas_tags_per_month: @roi_survey.eas_tags_per_month, existing_eas: @roi_survey.existing_eas, haba: @roi_survey.haba, meat_sales_percent: @roi_survey.meat_sales_percent, num_exits: @roi_survey.num_exits, num_exits_6_feet: @roi_survey.num_exits_6_feet, num_pos_terminals: @roi_survey.num_pos_terminals, store_sq_ft: @roi_survey.store_sq_ft, total_annual_sales: @roi_survey.total_annual_sales, walking_svc: @roi_survey.walking_svc }
    assert_redirected_to roi_survey_path(assigns(:roi_survey))
  end

  test "should destroy roi_survey" do
    assert_difference('RoiSurvey.count', -1) do
      delete :destroy, id: @roi_survey
    end

    assert_redirected_to roi_surveys_path
  end
end
