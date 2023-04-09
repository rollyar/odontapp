require "test_helper"

class ToothsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @tooth = tooths(:one)
  end

  test "should get index" do
    get tooths_url
    assert_response :success
  end

  test "should get new" do
    get new_tooth_url
    assert_response :success
  end

  test "should create tooth" do
    assert_difference("Tooth.count") do
      post tooths_url, params: { tooth: { number: @tooth.number, odontogram_id: @tooth.odontogram_id, position: @tooth.position, tooth_type: @tooth.tooth_type } }
    end

    assert_redirected_to tooth_url(Tooth.last)
  end

  test "should show tooth" do
    get tooth_url(@tooth)
    assert_response :success
  end

  test "should get edit" do
    get edit_tooth_url(@tooth)
    assert_response :success
  end

  test "should update tooth" do
    patch tooth_url(@tooth), params: { tooth: { number: @tooth.number, odontogram_id: @tooth.odontogram_id, position: @tooth.position, tooth_type: @tooth.tooth_type } }
    assert_redirected_to tooth_url(@tooth)
  end

  test "should destroy tooth" do
    assert_difference("Tooth.count", -1) do
      delete tooth_url(@tooth)
    end

    assert_redirected_to tooths_url
  end
end
