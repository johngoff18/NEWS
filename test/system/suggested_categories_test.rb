require "application_system_test_case"

class SuggestedCategoriesTest < ApplicationSystemTestCase
  setup do
    @suggested_category = suggested_categories(:one)
  end

  test "visiting the index" do
    visit suggested_categories_url
    assert_selector "h1", text: "Suggested Categories"
  end

  test "creating a Suggested category" do
    visit suggested_categories_url
    click_on "New Suggested Category"

    check "Approved" if @suggested_category.approved
    fill_in "Category", with: @suggested_category.category
    click_on "Create Suggested category"

    assert_text "Suggested category was successfully created"
    click_on "Back"
  end

  test "updating a Suggested category" do
    visit suggested_categories_url
    click_on "Edit", match: :first

    check "Approved" if @suggested_category.approved
    fill_in "Category", with: @suggested_category.category
    click_on "Update Suggested category"

    assert_text "Suggested category was successfully updated"
    click_on "Back"
  end

  test "destroying a Suggested category" do
    visit suggested_categories_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Suggested category was successfully destroyed"
  end
end
