require "application_system_test_case"

class ToothsTest < ApplicationSystemTestCase
  setup do
    @tooth = tooths(:one)
  end

  test "visiting the index" do
    visit tooths_url
    assert_selector "h1", text: "Tooths"
  end

  test "should create tooth" do
    visit tooths_url
    click_on "New tooth"

    fill_in "Number", with: @tooth.number
    fill_in "Odontogram", with: @tooth.odontogram_id
    fill_in "Position", with: @tooth.position
    fill_in "Tooth type", with: @tooth.tooth_type
    click_on "Create Tooth"

    assert_text "Tooth was successfully created"
    click_on "Back"
  end

  test "should update Tooth" do
    visit tooth_url(@tooth)
    click_on "Edit this tooth", match: :first

    fill_in "Number", with: @tooth.number
    fill_in "Odontogram", with: @tooth.odontogram_id
    fill_in "Position", with: @tooth.position
    fill_in "Tooth type", with: @tooth.tooth_type
    click_on "Update Tooth"

    assert_text "Tooth was successfully updated"
    click_on "Back"
  end

  test "should destroy Tooth" do
    visit tooth_url(@tooth)
    click_on "Destroy this tooth", match: :first

    assert_text "Tooth was successfully destroyed"
  end
end
