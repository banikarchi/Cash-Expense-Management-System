require "application_system_test_case"

class BudgetplanersTest < ApplicationSystemTestCase
  setup do
    @budgetplaner = budgetplaners(:one)
  end

  test "visiting the index" do
    visit budgetplaners_url
    assert_selector "h1", text: "Budgetplaners"
  end

  test "should create budgetplaner" do
    visit budgetplaners_url
    click_on "New budgetplaner"

    fill_in "Amount", with: @budgetplaner.amount
    fill_in "Category", with: @budgetplaner.category
    fill_in "Month", with: @budgetplaner.month
    fill_in "Notes", with: @budgetplaner.notes
    fill_in "Subcategory", with: @budgetplaner.subcategory
    click_on "Create Budgetplaner"

    assert_text "Budgetplaner was successfully created"
    click_on "Back"
  end

  test "should update Budgetplaner" do
    visit budgetplaner_url(@budgetplaner)
    click_on "Edit this budgetplaner", match: :first

    fill_in "Amount", with: @budgetplaner.amount
    fill_in "Category", with: @budgetplaner.category
    fill_in "Month", with: @budgetplaner.month
    fill_in "Notes", with: @budgetplaner.notes
    fill_in "Subcategory", with: @budgetplaner.subcategory
    click_on "Update Budgetplaner"

    assert_text "Budgetplaner was successfully updated"
    click_on "Back"
  end

  test "should destroy Budgetplaner" do
    visit budgetplaner_url(@budgetplaner)
    click_on "Destroy this budgetplaner", match: :first

    assert_text "Budgetplaner was successfully destroyed"
  end
end
