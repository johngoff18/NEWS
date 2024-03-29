require "application_system_test_case"

class UserLogsTest < ApplicationSystemTestCase
  setup do
    @user_log = user_logs(:one)
  end

  test "visiting the index" do
    visit user_logs_url
    assert_selector "h1", text: "User Logs"
  end

  test "creating a User log" do
    visit user_logs_url
    click_on "New User Log"

    fill_in "Url", with: @user_log.url
    fill_in "User", with: @user_log.user
    click_on "Create User log"

    assert_text "User log was successfully created"
    click_on "Back"
  end

  test "updating a User log" do
    visit user_logs_url
    click_on "Edit", match: :first

    fill_in "Url", with: @user_log.url
    fill_in "User", with: @user_log.user
    click_on "Update User log"

    assert_text "User log was successfully updated"
    click_on "Back"
  end

  test "destroying a User log" do
    visit user_logs_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "User log was successfully destroyed"
  end
end
