require "test_helper"

class ToothStatusesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @tooth_status = tooth_statuses(:one)
  end

  test "should get index" do
    get tooth_statuses_url
    assert_response :success
  end

  test "should get new" do
    get new_tooth_status_url
    assert_response :success
  end

  test "should create tooth_status" do
    assert_difference("ToothStatus.count") do
      post tooth_statuses_url, params: { tooth_status: { current_treatment: @tooth_status.current_treatment, observations: @tooth_status.observations, tooth_id: @tooth_status.tooth_id, treatment_history: @tooth_status.treatment_history } }
    end

    assert_redirected_to tooth_status_url(ToothStatus.last)
  end

  test "should show tooth_status" do
    get tooth_status_url(@tooth_status)
    assert_response :success
  end

  test "should get edit" do
    get edit_tooth_status_url(@tooth_status)
    assert_response :success
  end

  test "should update tooth_status" do
    patch tooth_status_url(@tooth_status), params: { tooth_status: { current_treatment: @tooth_status.current_treatment, observations: @tooth_status.observations, tooth_id: @tooth_status.tooth_id, treatment_history: @tooth_status.treatment_history } }
    assert_redirected_to tooth_status_url(@tooth_status)
  end

  test "should destroy tooth_status" do
    assert_difference("ToothStatus.count", -1) do
      delete tooth_status_url(@tooth_status)
    end

    assert_redirected_to tooth_statuses_url
  end
end
