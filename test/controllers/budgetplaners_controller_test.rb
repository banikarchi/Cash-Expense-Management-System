require "test_helper"

class BudgetplanersControllerTest < ActionDispatch::IntegrationTest
  setup do
    @budgetplaner = budgetplaners(:one)
  end

  test "should get index" do
    get budgetplaners_url
    assert_response :success
  end

  test "should get new" do
    get new_budgetplaner_url
    assert_response :success
  end

  test "should create budgetplaner" do
    assert_difference("Budgetplaner.count") do
      post budgetplaners_url, params: { budgetplaner: { amount: @budgetplaner.amount, category: @budgetplaner.category, month: @budgetplaner.month, notes: @budgetplaner.notes, subcategory: @budgetplaner.subcategory } }
    end

    assert_redirected_to budgetplaner_url(Budgetplaner.last)
  end

  test "should show budgetplaner" do
    get budgetplaner_url(@budgetplaner)
    assert_response :success
  end

  test "should get edit" do
    get edit_budgetplaner_url(@budgetplaner)
    assert_response :success
  end

  test "should update budgetplaner" do
    patch budgetplaner_url(@budgetplaner), params: { budgetplaner: { amount: @budgetplaner.amount, category: @budgetplaner.category, month: @budgetplaner.month, notes: @budgetplaner.notes, subcategory: @budgetplaner.subcategory } }
    assert_redirected_to budgetplaner_url(@budgetplaner)
  end

  test "should destroy budgetplaner" do
    assert_difference("Budgetplaner.count", -1) do
      delete budgetplaner_url(@budgetplaner)
    end

    assert_redirected_to budgetplaners_url
  end
end
