require "application_system_test_case"

class OdontogramsTest < ApplicationSystemTestCase
  setup do
    @odontogram = odontograms(:one)
  end

  test "visiting the index" do
    visit odontograms_url
    assert_selector "h1", text: "Odontograms"
  end

  test "should create odontogram" do
    visit odontograms_url
    click_on "New odontogram"

    fill_in "Exam date", with: @odontogram.exam_date
    fill_in "Exam type", with: @odontogram.exam_type
    fill_in "Patient", with: @odontogram.patient_id
    click_on "Create Odontogram"

    assert_text "Odontogram was successfully created"
    click_on "Back"
  end

  test "should update Odontogram" do
    visit odontogram_url(@odontogram)
    click_on "Edit this odontogram", match: :first

    fill_in "Exam date", with: @odontogram.exam_date
    fill_in "Exam type", with: @odontogram.exam_type
    fill_in "Patient", with: @odontogram.patient_id
    click_on "Update Odontogram"

    assert_text "Odontogram was successfully updated"
    click_on "Back"
  end

  test "should destroy Odontogram" do
    visit odontogram_url(@odontogram)
    click_on "Destroy this odontogram", match: :first

    assert_text "Odontogram was successfully destroyed"
  end
end
