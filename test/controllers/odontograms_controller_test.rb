require "test_helper"

class OdontogramsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @odontogram = odontograms(:one)
  end

  test "should get index" do
    get odontograms_url
    assert_response :success
  end

  test "should get new" do
    get new_odontogram_url
    assert_response :success
  end

  test "should create odontogram" do
    assert_difference("Odontogram.count") do
      post odontograms_url, params: { odontogram: { exam_date: @odontogram.exam_date, exam_type: @odontogram.exam_type, patient_id: @odontogram.patient_id } }
    end

    assert_redirected_to odontogram_url(Odontogram.last)
  end

  test "should show odontogram" do
    get odontogram_url(@odontogram)
    assert_response :success
  end

  test "should get edit" do
    get edit_odontogram_url(@odontogram)
    assert_response :success
  end

  test "should update odontogram" do
    patch odontogram_url(@odontogram), params: { odontogram: { exam_date: @odontogram.exam_date, exam_type: @odontogram.exam_type, patient_id: @odontogram.patient_id } }
    assert_redirected_to odontogram_url(@odontogram)
  end

  test "should destroy odontogram" do
    assert_difference("Odontogram.count", -1) do
      delete odontogram_url(@odontogram)
    end

    assert_redirected_to odontograms_url
  end
end
