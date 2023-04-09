require "test_helper"

class TreatmentsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @treatment = treatments(:one)
  end

  test "should get index" do
    get treatments_url
    assert_response :success
  end

  test "should get new" do
    get new_treatment_url
    assert_response :success
  end

  test "should create treatment" do
    assert_difference("Treatment.count") do
      post treatments_url, params: { treatment: { duration: @treatment.duration, end_date: @treatment.end_date, start_date: @treatment.start_date, tooth_status_id: @treatment.tooth_status_id, treatment_type: @treatment.treatment_type } }
    end

    assert_redirected_to treatment_url(Treatment.last)
  end

  test "should show treatment" do
    get treatment_url(@treatment)
    assert_response :success
  end

  test "should get edit" do
    get edit_treatment_url(@treatment)
    assert_response :success
  end

  test "should update treatment" do
    patch treatment_url(@treatment), params: { treatment: { duration: @treatment.duration, end_date: @treatment.end_date, start_date: @treatment.start_date, tooth_status_id: @treatment.tooth_status_id, treatment_type: @treatment.treatment_type } }
    assert_redirected_to treatment_url(@treatment)
  end

  test "should destroy treatment" do
    assert_difference("Treatment.count", -1) do
      delete treatment_url(@treatment)
    end

    assert_redirected_to treatments_url
  end
end
