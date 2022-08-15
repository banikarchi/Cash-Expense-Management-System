require "application_system_test_case"

class UzersTest < ApplicationSystemTestCase
  setup do
    @uzer = uzers(:one)
  end

  test "visiting the index" do
    visit uzers_url
    assert_selector "h1", text: "Uzers"
  end

  test "should create uzer" do
    visit uzers_url
    click_on "New uzer"

    click_on "Create Uzer"

    assert_text "Uzer was successfully created"
    click_on "Back"
  end

  test "should update Uzer" do
    visit uzer_url(@uzer)
    click_on "Edit this uzer", match: :first

    click_on "Update Uzer"

    assert_text "Uzer was successfully updated"
    click_on "Back"
  end

  test "should destroy Uzer" do
    visit uzer_url(@uzer)
    click_on "Destroy this uzer", match: :first

    assert_text "Uzer was successfully destroyed"
  end
end
