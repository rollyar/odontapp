require "application_system_test_case"

class ToothStatusesTest < ApplicationSystemTestCase
  setup do
    @tooth_status = tooth_statuses(:one)
  end

  test "visiting the index" do
    visit tooth_statuses_url
    assert_selector "h1", text: "Tooth statuses"
  end

  test "should create tooth status" do
    visit tooth_statuses_url
    click_on "New tooth status"

    check "Current treatment" if @tooth_status.current_treatment
    fill_in "Observations", with: @tooth_status.observations
    fill_in "Tooth", with: @tooth_status.tooth_id
    fill_in "Treatment history", with: @tooth_status.treatment_history
    click_on "Create Tooth status"

    assert_text "Tooth status was successfully created"
    click_on "Back"
  end

  test "should update Tooth status" do
    visit tooth_status_url(@tooth_status)
    click_on "Edit this tooth status", match: :first

    check "Current treatment" if @tooth_status.current_treatment
    fill_in "Observations", with: @tooth_status.observations
    fill_in "Tooth", with: @tooth_status.tooth_id
    fill_in "Treatment history", with: @tooth_status.treatment_history
    click_on "Update Tooth status"

    assert_text "Tooth status was successfully updated"
    click_on "Back"
  end

  test "should destroy Tooth status" do
    visit tooth_status_url(@tooth_status)
    click_on "Destroy this tooth status", match: :first

    assert_text "Tooth status was successfully destroyed"
  end
end
