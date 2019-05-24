require 'test_helper'

class SuggestedCategoriesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @suggested_category = suggested_categories(:one)
  end

  test "should get index" do
    get suggested_categories_url
    assert_response :success
  end

  test "should get new" do
    get new_suggested_category_url
    assert_response :success
  end

  test "should create suggested_category" do
    assert_difference('SuggestedCategory.count') do
      post suggested_categories_url, params: { suggested_category: { approved: @suggested_category.approved, category: @suggested_category.category } }
    end

    assert_redirected_to suggested_category_url(SuggestedCategory.last)
  end

  test "should show suggested_category" do
    get suggested_category_url(@suggested_category)
    assert_response :success
  end

  test "should get edit" do
    get edit_suggested_category_url(@suggested_category)
    assert_response :success
  end

  test "should update suggested_category" do
    patch suggested_category_url(@suggested_category), params: { suggested_category: { approved: @suggested_category.approved, category: @suggested_category.category } }
    assert_redirected_to suggested_category_url(@suggested_category)
  end

  test "should destroy suggested_category" do
    assert_difference('SuggestedCategory.count', -1) do
      delete suggested_category_url(@suggested_category)
    end

    assert_redirected_to suggested_categories_url
  end
end
